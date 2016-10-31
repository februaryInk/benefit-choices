medi_share_faqs = [
  {
    :question => 'What is the history of Medi-Share?',
    :answer => 'In 1993 Medi-Share was organized, offering a formalized approach to healthcare sharing. Medi-Share households have saved and shared more than one billion dollars in medical expenses since then. Medi-Share is administered by Christian Care Ministry, a 501(c)(3) organization.'
  },
  {
    :question => 'What is Healthcare Sharing?',
    :answer => 'Healthcare sharing is when a group of people unite to help pay each other’s medical bills. Medi-Share is based on the biblical principles of sharing others’ burdens. Members contribute monthly “shares” to assist other Christians who agree to live similar lifestyles.'
  },
  {
    :question => 'How is Medi-Share biblical?',
    :answer => 'Taking care of each other was a way of life for Christians in the days of the early Church. And do not forget to do good and to share with others, for with such sacrifices God is pleased.  —Hebrews 13:16 NIV'
  },
  {
    :question => 'How does Medi-Share serve as a ministry to the Christian community?',
    :answer => 'Christian Care Ministry isn’t just a healthcare sharing ministry. We also highly value our Members’ spiritual needs and general well-being. Members can post prayer needs on the online PrayerStream and a chaplain is available to counsel and pray with them.'
  },
  {
    :question => 'What kind of oversight is there at Medi-Share?',
    :answer => 'Medi-Share is self-regulated by a Board of Directors. The Board of Directors is responsible for the policy decisions of the ministry.'
  },
  {
    :question => 'Who makes the rules for the Medi-Share program?',
    :answer => 'Members make the rules! All members have the opportunity to vote on how they wish to care for one another. The Board of Directors reviews suggestions and recommends changes to the Guidelines about once a year. Members then vote on the proposed changes, whatever they may be, for example, whether to expand what medical needs will be shared, change the sharing process or otherwise modify the program. There is also a Member Steering Committee that considers and votes on changes to the Guidelines that do not involve major new restrictions or relaxation.'
  },
  {
    :question => 'What is the deductible?',
    :answer => 'Members do not have deductibles. Our Members select an Annual Household Portion (AHP) ranging from $500-$10,000. Medi-Share is not insurance and Christian Care Ministry is not an insurance company and it is not responsible for paying any portion of your medical bills. Rather, if your Eligible Medical Bill is paid, it is paid with funds received directly from other Members. With healthcare sharing ministries, the Member is always responsible for his or her own medical expenses. The AHP is the dollar amount that a Member Household must pay toward Eligible Medical Bills before any bill may be shared among the Members. The AHP only applies to Eligible Medical Bills. For example, if you have a $1,250 AHP, the first $1,250 of all Eligible Medical Bills for your family will not be published for sharing. After that, ALL Eligible Medical Bills will be submitted for sharing for the ENTIRE household. The AHP amount resets every 12 months on the effective date.'
  },
  {
    :question => 'What is the monthly premium?',
    :answer => 'Members do not have a monthly premium. Our Members have a monthly “share” which is based on age and how many people are in a household.  Members deposit their monthly share into their individual sharing account. Unlike insurance, your monthly share goes directly into a fellow Member’s sharing account to pay their medical bills. You can go online to see which bills are published for sharing and who’s benefitting from your monthly share.'
  },
  {
    :question => 'How does the claim process work?',
    :answer => 'Members do not file claims, nor does the ministry handle claims because we are not an insurance company. “Claim” literally means that you have a right to someone else’s money; remember, Christian Care Ministry does not pay your medical bills with its money. If your Eligible Medical Bill is paid, it is paid with funds received directly from another Member. Our Members present their membership card to their service provider. The service provider then discounts the bill accordingly, if within the Preferred Provider Organization network. The bill is then sent to us where we negotiate for further discounts. Here, we review the services provided to determine if the bill is eligible for sharing. After the AHP has been met and if the bill is eligible, it is published for sharing.'
  },
  {
    :question => 'Why aren’t well-visits, routine care or preventive care shared?',
    :answer => 'Because Medi-Share is not insurance, we don’t act the same as insurance. While we often negotiate discounts for these sorts of visits, the primary purpose of Medi-Share, as expressed by our Members, is to help share Members’ burdens. Burdens are those unexpected medical bills (ie. broken bones, cancer, etc). The low monthly share amounts enable you to budget for your family’s routine care, which can be planned. Good stewardship should be practiced by all, and we believe this method of healthcare helps promote stewardship among Christians.'
  },
  {
    :question => 'So Medi-Share is not insurance?',
    :answer => 'Correct! Medi-Share is not insurance and Christian Care Ministry is not an insurance company. The program is a healthcare sharing ministry, facilitated by Christian Care Ministry. With insurance, an insurance company agrees to pay your medical bills with its funds. Healthcare sharing ministries, like Christian Care Ministry, facilitate member-to-member sharing. Your monthly share deposit each month does not go into a reserve at Christian Care Ministry. Instead, it goes directly to a family who has a medical need. Similarly, other families are contributing to help you through your time of need.'
  }
]

medi_share_faqs.each do | faq |
  unless MediShareFaq.exists?( :question => faq[ :question ] )
    MediShareFaq.create(
      :answer => faq[ :answer ],
      :position => MediShareFaq.count + 1,
      :question => faq[ :question ]
    )
  end
end
