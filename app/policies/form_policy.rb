class FormSubmissionPolicy
  attr_reader :user, :form_submission

  def initialize(user, form_submission)
    @user = user
    @form_submission = form_submission
  end

  def edit?
    user.admin? or form_submission.user_id == user.id
  end
end