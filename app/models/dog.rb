class Dog < ActiveRecord::Base
  belongs_to :organization, counter_cache: true
  has_many :breeds, :through => :dbreeds
  has_many :dog_pics
  has_many :specs, :through => :dspecs

  def sm_pic_url
    return self.dog_pics.where(size: "small").first.link
  end

  def md_pic_url
    return self.dog_pics.where(size: "medium").first.link
  end

  def lg_pic_url
    return self.dog_pics.where(size: "large").first.link
  end

  def org_name
    return self.organization.name
  end
end
