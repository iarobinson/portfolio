class MilitaryRankTestsController < ApplicationController
  before_action :set_military_rank_test, only: [:show, :edit, :update, :destroy]

  def index
    @military_rank_tests = MilitaryRankTest.all
  end

  def show
  end

  def new
    if current_user.nil?
      redirect_to new_user_path
    end

    @military_rank_test = MilitaryRankTest.new
  end

  def edit
  end

  def create
    @military_rank_test = MilitaryRankTest.new
    @military_rank_test.user = current_user

    10.times do |x|
      @question = Question.new
      @question.save
      @military_rank_test.questions << @question
    end

    respond_to do |format|
      if @military_rank_test.save
        format.html { redirect_to @military_rank_test, notice: 'Military rank test was successfully created.' }
        format.json { render :show, status: :created, location: @military_rank_test }
      else
        format.html { render :new }
        format.json { render json: @military_rank_test.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @military_rank_test.update(military_rank_test_params)
        format.html { redirect_to @military_rank_test, notice: 'Military rank test was successfully updated.' }
        format.json { render :show, status: :ok, location: @military_rank_test }
      else
        format.html { render :edit }
        format.json { render json: @military_rank_test.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @military_rank_test.destroy
    respond_to do |format|
      format.html { redirect_to military_rank_tests_url, notice: 'Military rank test was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    def set_military_rank_test
      @military_rank_test = MilitaryRankTest.find(params[:id])
    end

    def military_rank_test_params
      params.require(:military_rank_test).permit(:branch)
    end
end
