# class to return the outlier numbers
class PuzzleClass
  include DataMagic

  def outliers
    data = data_for(:parameters)

    outlier1 = find_outlier(data['array_1'])
    outlier2 = find_outlier(data['array_2'])
    outlier1[0].to_s + ' ' + outlier2[0].to_s
  end

  private

  def find_outlier(array)
    odd_numbers = array.find_all(&:odd?)
    even_numbers = array.find_all(&:even?)

    return odd_numbers if odd_numbers.size == 1

    even_numbers
  end
end
