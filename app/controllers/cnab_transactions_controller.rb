class CnabTransactionsController < ApplicationController

  def index
    @cnab_transactions = CnabTransaction.all
  end

  def new
    @cnab_transaction = CnabTransaction.new
  end

  def create
    file = cnab_transaction_params[:file].tempfile
    import_cnab_transaction = ImportCnabTransaction.new(file.path)
    import_cnab_transaction.execute
    if import_cnab_transaction.errors.count > 0
      flash[:notice] = "Erro ao importar arquivo: #{import_cnab_transaction.errors.join(', ')}"
      render :new
    else
      flash[:notice] = "Arquivo importando com sucesso"
      redirect_to action: :index
    end
  end

  private

  def cnab_transaction_params
    params.require(:cnab_transaction).permit(:file)
  end
end
