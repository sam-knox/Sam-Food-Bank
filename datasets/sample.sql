BEGIN TRANSACTION;
CREATE TABLE "Account" (
	sf_id VARCHAR(255) NOT NULL, 
	"Name" VARCHAR(255), 
	parent_id VARCHAR(255), 
	PRIMARY KEY (sf_id)
);
INSERT INTO "Account" VALUES('0015500000doH6WAAU','Costco','');
CREATE TABLE "Delivery_Item__c" (
	sf_id VARCHAR(255) NOT NULL, 
	"Name" VARCHAR(255), 
	"Food_Expiration_Date__c" VARCHAR(255), 
	"Food_Storage_Type__c" VARCHAR(255), 
	delivery__c VARCHAR(255), 
	PRIMARY KEY (sf_id)
);
INSERT INTO "Delivery_Item__c" VALUES('a0155000006JatvAAC','Bacon','2019-12-31','Refrigerated','a0055000004RVUgAAO');
INSERT INTO "Delivery_Item__c" VALUES('a0155000006Jau0AAC','More Bacon','2019-12-31','Refrigerated','a0055000004RVUgAAO');
INSERT INTO "Delivery_Item__c" VALUES('a0155000006JatwAAC','EVEN MORE BACON','2019-12-31','Refrigerated','a0055000004RVUgAAO');
INSERT INTO "Delivery_Item__c" VALUES('a0155000006Jau5AAC','Beer','2020-04-30','Refrigerated','a0055000004RVUgAAO');
CREATE TABLE "Delivery__c" (
	sf_id VARCHAR(255) NOT NULL, 
	"Scheduled_Date__c" VARCHAR(255), 
	"Status__c" VARCHAR(255), 
	supplier__c VARCHAR(255), 
	PRIMARY KEY (sf_id)
);
INSERT INTO "Delivery__c" VALUES('a0055000004RVUgAAO','2019-11-25T17:30:00.000Z','Requested','0015500000doH6WAAU');
COMMIT;
