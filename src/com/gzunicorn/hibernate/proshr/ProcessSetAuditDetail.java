package com.gzunicorn.hibernate.proshr;

/**
 * ProcessSetAuditDetail entity. @author MyEclipse Persistence Tools
 */
public class ProcessSetAuditDetail extends AbstractProcessSetAuditDetail
		implements java.io.Serializable {

	// Constructors

	/** default constructor */
	public ProcessSetAuditDetail() {
	}

	/** full constructor */
	public ProcessSetAuditDetail(String billno,
			String auditoperid, String comid, String r1, String r2, String r3,
			String r4, String r5, Double r6, Double r7, Double r8, Integer r9,
			Integer r10) {
		super(billno, auditoperid, comid, r1, r2, r3, r4, r5,
				r6, r7, r8, r9, r10);
	}

}
