# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Make sure each ForeignKey and OneToOneField has `on_delete` set to the desired behavior
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
from django.db import models


class AuthGroup(models.Model):
    name = models.CharField(unique=True, max_length=150)

    class Meta:
        managed = False
        db_table = 'auth_group'


class AuthGroupPermissions(models.Model):
    group = models.ForeignKey(AuthGroup, models.DO_NOTHING)
    permission = models.ForeignKey('AuthPermission', models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_group_permissions'
        unique_together = (('group', 'permission'),)


class AuthPermission(models.Model):
    name = models.CharField(max_length=255)
    content_type = models.ForeignKey('DjangoContentType', models.DO_NOTHING)
    codename = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'auth_permission'
        unique_together = (('content_type', 'codename'),)


class AuthUser(models.Model):
    password = models.CharField(max_length=128)
    last_login = models.DateTimeField(blank=True, null=True)
    is_superuser = models.IntegerField()
    username = models.CharField(unique=True, max_length=150)
    first_name = models.CharField(max_length=30)
    last_name = models.CharField(max_length=150)
    email = models.CharField(max_length=254)
    is_staff = models.IntegerField()
    is_active = models.IntegerField()
    date_joined = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'auth_user'


class AuthUserGroups(models.Model):
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)
    group = models.ForeignKey(AuthGroup, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_user_groups'
        unique_together = (('user', 'group'),)


class AuthUserUserPermissions(models.Model):
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)
    permission = models.ForeignKey(AuthPermission, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_user_user_permissions'
        unique_together = (('user', 'permission'),)


class ClinicInfo(models.Model):
    doc = models.OneToOneField('Doctors', models.DO_NOTHING, primary_key=True)
    enq_no = models.CharField(max_length=10, blank=True, null=True)
    clinic_name = models.CharField(max_length=30, blank=True, null=True)
    str_addr = models.TextField(blank=True, null=True)
    area = models.CharField(max_length=30, blank=True, null=True)
    city = models.CharField(max_length=15, blank=True, null=True)
    zip = models.CharField(max_length=6, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'clinic_info'


class Disease(models.Model):
    d_id = models.AutoField(primary_key=True)
    name = models.CharField(max_length=100)
    report = models.TextField()
    medicines = models.TextField()

    class Meta:
        managed = False
        db_table = 'disease'


class DjangoAdminLog(models.Model):
    action_time = models.DateTimeField()
    object_id = models.TextField(blank=True, null=True)
    object_repr = models.CharField(max_length=200)
    action_flag = models.PositiveSmallIntegerField()
    change_message = models.TextField()
    content_type = models.ForeignKey('DjangoContentType', models.DO_NOTHING, blank=True, null=True)
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'django_admin_log'


class DjangoContentType(models.Model):
    app_label = models.CharField(max_length=100)
    model = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'django_content_type'
        unique_together = (('app_label', 'model'),)


class DjangoMigrations(models.Model):
    app = models.CharField(max_length=255)
    name = models.CharField(max_length=255)
    applied = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'django_migrations'


class DjangoSession(models.Model):
    session_key = models.CharField(primary_key=True, max_length=40)
    session_data = models.TextField()
    expire_date = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'django_session'


class DocInfo(models.Model):
    doc = models.OneToOneField('Doctors', models.DO_NOTHING, primary_key=True)
    propic = models.TextField(blank=True, null=True)
    speciality = models.CharField(max_length=30, blank=True, null=True)
    qualification = models.TextField(blank=True, null=True)
    institute = models.CharField(max_length=50, blank=True, null=True)
    exp = models.CharField(max_length=3, blank=True, null=True)
    reg_no = models.CharField(max_length=15, blank=True, null=True)
    aadhar = models.CharField(max_length=15, blank=True, null=True)
    certificate = models.TextField(blank=True, null=True)
    about = models.TextField(blank=True, null=True)
    upvotes = models.IntegerField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'doc_info'


class Doctors(models.Model):
    doc_id = models.AutoField(primary_key=True)
    firstname = models.CharField(max_length=30)
    lastname = models.CharField(max_length=30)
    email = models.CharField(unique=True, max_length=255)
    phone = models.CharField(max_length=10)
    password = models.CharField(max_length=100)
    live = models.IntegerField()
    hash = models.CharField(max_length=32)
    active = models.IntegerField()
    vkey = models.CharField(max_length=255, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'doctors'


class LabDocInfo(models.Model):
    lab_doc_id = models.IntegerField()
    propic = models.TextField()
    speciality = models.CharField(max_length=30)
    qualification = models.TextField()
    institute = models.CharField(max_length=50)
    exp = models.CharField(max_length=3)
    reg_no = models.CharField(max_length=15)
    aadhar = models.CharField(max_length=15)
    certificate = models.TextField()

    class Meta:
        managed = False
        db_table = 'lab_doc_info'


class LabInfo(models.Model):
    lab_doc_id = models.IntegerField()
    enq_no = models.CharField(max_length=10)
    clinic_name = models.CharField(max_length=30)
    str_addr = models.TextField()
    area = models.CharField(max_length=30)
    city = models.CharField(max_length=15)
    zip = models.CharField(max_length=6)

    class Meta:
        managed = False
        db_table = 'lab_info'


class LabTest(models.Model):
    u_case_id = models.IntegerField(blank=True, null=True)
    test_id = models.AutoField(primary_key=True)
    t_name = models.CharField(max_length=15, blank=True, null=True)
    t_notes = models.CharField(max_length=100, blank=True, null=True)
    t_img = models.CharField(max_length=50, blank=True, null=True)
    status = models.IntegerField()

    class Meta:
        managed = False
        db_table = 'lab_test'


class Laboratory(models.Model):
    lab_doc_id = models.AutoField(primary_key=True)
    password = models.CharField(max_length=100)
    phone = models.CharField(max_length=10, blank=True, null=True)
    email = models.CharField(max_length=40, blank=True, null=True)
    firstname = models.CharField(max_length=10, blank=True, null=True)
    lastname = models.CharField(max_length=10, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'laboratory'


class PharmInfo(models.Model):
    ph_id = models.CharField(max_length=20)
    exp = models.CharField(max_length=5)
    propic = models.TextField()
    aadhar = models.CharField(max_length=20)
    reg_no = models.CharField(max_length=20)
    certificate = models.TextField()

    class Meta:
        managed = False
        db_table = 'pharm_info'


class PharmReg(models.Model):
    firstname = models.CharField(max_length=30)
    lastname = models.CharField(max_length=30)
    email = models.CharField(max_length=50)
    password = models.CharField(max_length=100)
    phone = models.CharField(max_length=10)
    ph_id = models.AutoField(primary_key=True)

    class Meta:
        managed = False
        db_table = 'pharm_reg'


class PharmShopInfo(models.Model):
    ph_id = models.CharField(max_length=20)
    enq_no = models.CharField(max_length=10)
    shop_name = models.CharField(max_length=30)
    area = models.CharField(max_length=30)
    city = models.CharField(max_length=15)
    str_addr = models.TextField()
    zip = models.CharField(max_length=6)

    class Meta:
        managed = False
        db_table = 'pharm_shop_info'


class Pharmacy(models.Model):
    u_case_id = models.IntegerField(blank=True, null=True)
    ph_id = models.AutoField(primary_key=True)
    m_status = models.IntegerField(blank=True, null=True)
    p_medicine = models.CharField(max_length=1000, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'pharmacy'


class Prescription(models.Model):
    u_case = models.ForeignKey('UCase', models.DO_NOTHING, blank=True, null=True)
    pre_id = models.AutoField(primary_key=True)
    observations = models.TextField(blank=True, null=True)
    diagnosis = models.TextField(blank=True, null=True)
    investigation = models.TextField(blank=True, null=True)
    medications = models.TextField(blank=True, null=True)
    plan = models.TextField(blank=True, null=True)
    disease = models.TextField(blank=True, null=True)
    status = models.IntegerField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'prescription'


class UAllergy(models.Model):
    allergy_id = models.AutoField(primary_key=True)
    u_id = models.CharField(max_length=15)
    allergy = models.CharField(max_length=50, blank=True, null=True)
    choice = models.CharField(max_length=1, blank=True, null=True)
    duration = models.CharField(max_length=10, blank=True, null=True)
    numb = models.IntegerField(blank=True, null=True)
    severity = models.CharField(max_length=50, blank=True, null=True)
    notes = models.CharField(max_length=20, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'u_allergy'


class UBloodglucose(models.Model):
    bg_id = models.AutoField(primary_key=True)
    u_id = models.CharField(max_length=15)
    result = models.CharField(max_length=20, blank=True, null=True)
    utype = models.CharField(max_length=20, blank=True, null=True)
    udate = models.TextField(blank=True, null=True)
    notes = models.TextField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'u_bloodglucose'


class UBloodpressure(models.Model):
    bp_id = models.AutoField(primary_key=True)
    u_id = models.CharField(max_length=15)
    systolic = models.CharField(max_length=10, blank=True, null=True)
    diastolic = models.CharField(max_length=10, blank=True, null=True)
    udate = models.TextField(blank=True, null=True)
    notes = models.TextField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'u_bloodpressure'


class UBmi(models.Model):
    b_id = models.AutoField(primary_key=True)
    u_id = models.CharField(max_length=15)
    uweight = models.CharField(max_length=10, blank=True, null=True)
    uheight = models.CharField(max_length=10, blank=True, null=True)
    bmi = models.CharField(max_length=20, blank=True, null=True)
    udate = models.TextField(blank=True, null=True)
    notes = models.TextField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'u_bmi'


class UBodytemperature(models.Model):
    bt_id = models.AutoField(primary_key=True)
    u_id = models.CharField(max_length=15)
    result = models.CharField(max_length=20, blank=True, null=True)
    udate = models.TextField(blank=True, null=True)
    notes = models.TextField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'u_bodytemperature'


class UCase(models.Model):
    u_id = models.CharField(max_length=12, blank=True, null=True)
    u_case_id = models.AutoField(primary_key=True)
    place = models.CharField(max_length=20, blank=True, null=True)
    doc_id = models.IntegerField(blank=True, null=True)
    c_date = models.DateTimeField(blank=True, null=True)
    disease = models.CharField(max_length=20, blank=True, null=True)
    status = models.CharField(max_length=10)
    lab_status = models.IntegerField()

    class Meta:
        managed = False
        db_table = 'u_case'


class UGenInfo(models.Model):
    u_id = models.CharField(primary_key=True, max_length=12)
    password = models.CharField(max_length=100)
    firstname = models.CharField(max_length=30, blank=True, null=True)
    middlename = models.CharField(max_length=30, blank=True, null=True)
    lastname = models.CharField(max_length=30, blank=True, null=True)
    dob = models.DateField(blank=True, null=True)
    gender = models.CharField(max_length=8, blank=True, null=True)
    aadhar_no = models.CharField(max_length=12, blank=True, null=True)
    email = models.CharField(max_length=40, blank=True, null=True)
    b_group = models.CharField(max_length=3, blank=True, null=True)
    phone = models.CharField(max_length=10, blank=True, null=True)
    address = models.CharField(max_length=500, blank=True, null=True)
    city_town = models.CharField(max_length=20, blank=True, null=True)
    district = models.CharField(max_length=30, blank=True, null=True)
    state = models.CharField(max_length=30, blank=True, null=True)
    pin = models.CharField(max_length=6, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'u_gen_info'


class UHeartrate(models.Model):
    hr_id = models.AutoField(primary_key=True)
    u_id = models.CharField(max_length=15)
    result = models.CharField(max_length=20, blank=True, null=True)
    udate = models.TextField(blank=True, null=True)
    notes = models.TextField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'u_heartrate'


class UImmunization(models.Model):
    imm_id = models.AutoField(primary_key=True)
    u_id = models.CharField(max_length=15)
    immunization = models.CharField(max_length=50, blank=True, null=True)
    udate = models.TextField(blank=True, null=True)
    notes = models.TextField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'u_immunization'


class ULabtest(models.Model):
    lab_id = models.AutoField(primary_key=True)
    u_id = models.CharField(max_length=15)
    utest = models.CharField(max_length=50, blank=True, null=True)
    udate = models.TextField(blank=True, null=True)
    result = models.IntegerField(blank=True, null=True)
    unit = models.IntegerField(blank=True, null=True)
    img = models.TextField(blank=True, null=True)
    notes = models.TextField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'u_labtest'


class UMedication(models.Model):
    med_id = models.AutoField(primary_key=True)
    u_id = models.CharField(max_length=15)
    medicine = models.CharField(max_length=50, blank=True, null=True)
    udate = models.TextField(blank=True, null=True)
    strength = models.CharField(max_length=50, blank=True, null=True)
    dosage = models.IntegerField(blank=True, null=True)
    dosage_type = models.CharField(max_length=20, blank=True, null=True)
    duration = models.CharField(max_length=10, blank=True, null=True)
    uday = models.CharField(max_length=20, blank=True, null=True)
    frequencytaken = models.IntegerField(blank=True, null=True)
    notes = models.TextField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'u_medication'


class UPrescription(models.Model):
    pres_id = models.AutoField(primary_key=True)
    u_id = models.CharField(max_length=15)
    u_hospital = models.CharField(max_length=20, blank=True, null=True)
    u_doctor = models.CharField(max_length=20, blank=True, null=True)
    u_date = models.TextField(blank=True, null=True)
    u_phone = models.IntegerField(blank=True, null=True)
    u_address = models.CharField(max_length=50, blank=True, null=True)
    notes = models.TextField(blank=True, null=True)
    img1 = models.TextField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'u_prescription'


class UProblem(models.Model):
    pr_id = models.AutoField(primary_key=True)
    u_id = models.CharField(max_length=15)
    uproblem = models.CharField(max_length=30, blank=True, null=True)
    choice = models.CharField(max_length=3, blank=True, null=True)
    udate = models.TextField(blank=True, null=True)
    diagnosis = models.CharField(max_length=30, blank=True, null=True)
    notes = models.TextField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'u_problem'


class UProcedure(models.Model):
    pro_id = models.AutoField(primary_key=True)
    u_id = models.CharField(max_length=15)
    u_pro = models.CharField(max_length=30, blank=True, null=True)
    u_perform = models.CharField(max_length=30, blank=True, null=True)
    u_date = models.TextField(blank=True, null=True)
    u_report = models.TextField(blank=True, null=True)
    u_notes = models.TextField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'u_procedure'


class URespiratoryrate(models.Model):
    rr_id = models.AutoField(primary_key=True)
    u_id = models.CharField(max_length=15)
    result = models.CharField(max_length=20, blank=True, null=True)
    udate = models.TextField(blank=True, null=True)
    notes = models.TextField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'u_respiratoryrate'


class USpo2(models.Model):
    sp_id = models.AutoField(primary_key=True)
    u_id = models.CharField(max_length=15)
    result = models.CharField(max_length=20, blank=True, null=True)
    udate = models.TextField(blank=True, null=True)
    notes = models.TextField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'u_spo2'
