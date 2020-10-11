class FormSubmissionPolicy < ApplicationPolicy
  class Scope < Scope
    def initialize(user, scope)
      @user = user
      @scope = scope
    end

    def resolve
      if user.admin?
        scope.all
      else
        scope.where(user_id: user.id)
      end
    end

    private

    attr_reader :user, :scope
  end

  attr_reader :user, :form_submission

  def initialize(user, form_submission)
    @user = user
    @form_submission = form_submission
  end

  def edit?
    user.admin? || (form_submission.user_id == user.id)
  end

  def update?
    user.admin? || (form_submission.user_id == user.id)
  end

  def destroy?
    user.admin? || (form_submission.user_id == user.id)
  end
end
