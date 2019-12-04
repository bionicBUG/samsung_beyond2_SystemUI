.class public Lcom/sec/knox/container/ContainerCreationParams;
.super Ljava/lang/Object;
.source "ContainerCreationParams.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/sec/knox/container/ContainerCreationParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private isMigrationFlow:Z

.field private mAdminParam:Ljava/lang/String;

.field private mAdminRemovable:Z

.field private mAdminUid:I

.field private mBackupPin:Ljava/lang/String;

.field private mConfigurationType:Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

.field private mCreatorUid:I

.field private mFeatureType:Ljava/lang/String;

.field private mFingerprintPlus:Z

.field private mFlags:I

.field private mIrisPlus:Z

.field private mLockType:I

.field private mName:Ljava/lang/String;

.field private mPackagePoliciesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPassword:Ljava/lang/String;

.field private mRequestId:I

.field private mRequestState:I

.field private mResetPwdKey:Ljava/lang/String;

.field private mRestoreSelected:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 216
    new-instance v0, Lcom/sec/knox/container/ContainerCreationParams$1;

    invoke-direct {v0}, Lcom/sec/knox/container/ContainerCreationParams$1;-><init>()V

    sput-object v0, Lcom/sec/knox/container/ContainerCreationParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/sec/knox/container/ContainerCreationParams;->mName:Ljava/lang/String;

    .line 28
    iput-object v0, p0, Lcom/sec/knox/container/ContainerCreationParams;->mPassword:Ljava/lang/String;

    .line 29
    iput-object v0, p0, Lcom/sec/knox/container/ContainerCreationParams;->mBackupPin:Ljava/lang/String;

    .line 30
    iput-object v0, p0, Lcom/sec/knox/container/ContainerCreationParams;->mAdminParam:Ljava/lang/String;

    const/4 v1, 0x0

    .line 32
    iput v1, p0, Lcom/sec/knox/container/ContainerCreationParams;->mRequestState:I

    const/4 v2, -0x1

    .line 34
    iput v2, p0, Lcom/sec/knox/container/ContainerCreationParams;->mRequestId:I

    .line 35
    iput v1, p0, Lcom/sec/knox/container/ContainerCreationParams;->mFlags:I

    .line 36
    iput v1, p0, Lcom/sec/knox/container/ContainerCreationParams;->mLockType:I

    .line 37
    iput v1, p0, Lcom/sec/knox/container/ContainerCreationParams;->mAdminUid:I

    const/4 v2, 0x1

    .line 38
    iput-boolean v2, p0, Lcom/sec/knox/container/ContainerCreationParams;->mAdminRemovable:Z

    .line 39
    iput v1, p0, Lcom/sec/knox/container/ContainerCreationParams;->mCreatorUid:I

    .line 41
    iput-boolean v1, p0, Lcom/sec/knox/container/ContainerCreationParams;->mFingerprintPlus:Z

    .line 42
    iput-boolean v1, p0, Lcom/sec/knox/container/ContainerCreationParams;->mRestoreSelected:Z

    .line 44
    iput-boolean v1, p0, Lcom/sec/knox/container/ContainerCreationParams;->mIrisPlus:Z

    .line 46
    iput-object v0, p0, Lcom/sec/knox/container/ContainerCreationParams;->mConfigurationType:Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    .line 49
    iput-boolean v1, p0, Lcom/sec/knox/container/ContainerCreationParams;->isMigrationFlow:Z

    .line 53
    iput-object v0, p0, Lcom/sec/knox/container/ContainerCreationParams;->mFeatureType:Ljava/lang/String;

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/knox/container/ContainerCreationParams;->mPackagePoliciesMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/sec/knox/container/ContainerCreationParams;->mName:Ljava/lang/String;

    .line 28
    iput-object v0, p0, Lcom/sec/knox/container/ContainerCreationParams;->mPassword:Ljava/lang/String;

    .line 29
    iput-object v0, p0, Lcom/sec/knox/container/ContainerCreationParams;->mBackupPin:Ljava/lang/String;

    .line 30
    iput-object v0, p0, Lcom/sec/knox/container/ContainerCreationParams;->mAdminParam:Ljava/lang/String;

    const/4 v1, 0x0

    .line 32
    iput v1, p0, Lcom/sec/knox/container/ContainerCreationParams;->mRequestState:I

    const/4 v2, -0x1

    .line 34
    iput v2, p0, Lcom/sec/knox/container/ContainerCreationParams;->mRequestId:I

    .line 35
    iput v1, p0, Lcom/sec/knox/container/ContainerCreationParams;->mFlags:I

    .line 36
    iput v1, p0, Lcom/sec/knox/container/ContainerCreationParams;->mLockType:I

    .line 37
    iput v1, p0, Lcom/sec/knox/container/ContainerCreationParams;->mAdminUid:I

    const/4 v2, 0x1

    .line 38
    iput-boolean v2, p0, Lcom/sec/knox/container/ContainerCreationParams;->mAdminRemovable:Z

    .line 39
    iput v1, p0, Lcom/sec/knox/container/ContainerCreationParams;->mCreatorUid:I

    .line 41
    iput-boolean v1, p0, Lcom/sec/knox/container/ContainerCreationParams;->mFingerprintPlus:Z

    .line 42
    iput-boolean v1, p0, Lcom/sec/knox/container/ContainerCreationParams;->mRestoreSelected:Z

    .line 44
    iput-boolean v1, p0, Lcom/sec/knox/container/ContainerCreationParams;->mIrisPlus:Z

    .line 46
    iput-object v0, p0, Lcom/sec/knox/container/ContainerCreationParams;->mConfigurationType:Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    .line 49
    iput-boolean v1, p0, Lcom/sec/knox/container/ContainerCreationParams;->isMigrationFlow:Z

    .line 53
    iput-object v0, p0, Lcom/sec/knox/container/ContainerCreationParams;->mFeatureType:Ljava/lang/String;

    .line 55
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/sec/knox/container/ContainerCreationParams;->mPackagePoliciesMap:Ljava/util/HashMap;

    .line 230
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/knox/container/ContainerCreationParams;->mName:Ljava/lang/String;

    .line 231
    iget-object v3, p0, Lcom/sec/knox/container/ContainerCreationParams;->mName:Ljava/lang/String;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 232
    iput-object v0, p0, Lcom/sec/knox/container/ContainerCreationParams;->mName:Ljava/lang/String;

    .line 234
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/knox/container/ContainerCreationParams;->mPassword:Ljava/lang/String;

    .line 235
    iget-object v3, p0, Lcom/sec/knox/container/ContainerCreationParams;->mPassword:Ljava/lang/String;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 236
    iput-object v0, p0, Lcom/sec/knox/container/ContainerCreationParams;->mPassword:Ljava/lang/String;

    .line 238
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/knox/container/ContainerCreationParams;->mBackupPin:Ljava/lang/String;

    .line 239
    iget-object v3, p0, Lcom/sec/knox/container/ContainerCreationParams;->mBackupPin:Ljava/lang/String;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 240
    iput-object v0, p0, Lcom/sec/knox/container/ContainerCreationParams;->mBackupPin:Ljava/lang/String;

    .line 242
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/knox/container/ContainerCreationParams;->mAdminParam:Ljava/lang/String;

    .line 243
    iget-object v3, p0, Lcom/sec/knox/container/ContainerCreationParams;->mAdminParam:Ljava/lang/String;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 244
    iput-object v0, p0, Lcom/sec/knox/container/ContainerCreationParams;->mAdminParam:Ljava/lang/String;

    .line 246
    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/knox/container/ContainerCreationParams;->mResetPwdKey:Ljava/lang/String;

    .line 247
    iget-object v3, p0, Lcom/sec/knox/container/ContainerCreationParams;->mResetPwdKey:Ljava/lang/String;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 248
    iput-object v0, p0, Lcom/sec/knox/container/ContainerCreationParams;->mResetPwdKey:Ljava/lang/String;

    .line 250
    :cond_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/sec/knox/container/ContainerCreationParams;->mRequestId:I

    .line 251
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/sec/knox/container/ContainerCreationParams;->mFlags:I

    .line 252
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/sec/knox/container/ContainerCreationParams;->mLockType:I

    .line 253
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/sec/knox/container/ContainerCreationParams;->mAdminUid:I

    .line 254
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/sec/knox/container/ContainerCreationParams;->mCreatorUid:I

    .line 255
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-ne v3, v2, :cond_5

    move v3, v2

    goto :goto_0

    :cond_5
    move v3, v1

    :goto_0
    iput-boolean v3, p0, Lcom/sec/knox/container/ContainerCreationParams;->mFingerprintPlus:Z

    .line 256
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-ne v3, v2, :cond_6

    move v3, v2

    goto :goto_1

    :cond_6
    move v3, v1

    :goto_1
    iput-boolean v3, p0, Lcom/sec/knox/container/ContainerCreationParams;->mRestoreSelected:Z

    .line 257
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-ne v3, v2, :cond_7

    move v3, v2

    goto :goto_2

    :cond_7
    move v3, v1

    :goto_2
    iput-boolean v3, p0, Lcom/sec/knox/container/ContainerCreationParams;->mIrisPlus:Z

    .line 259
    const-class v3, Lcom/sec/knox/container/ContainerCreationParams;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    iput-object v3, p0, Lcom/sec/knox/container/ContainerCreationParams;->mConfigurationType:Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    .line 262
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-ne v3, v2, :cond_8

    move v3, v2

    goto :goto_3

    :cond_8
    move v3, v1

    :goto_3
    iput-boolean v3, p0, Lcom/sec/knox/container/ContainerCreationParams;->isMigrationFlow:Z

    .line 264
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-ne v3, v2, :cond_9

    move v1, v2

    :cond_9
    iput-boolean v1, p0, Lcom/sec/knox/container/ContainerCreationParams;->mAdminRemovable:Z

    .line 266
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/knox/container/ContainerCreationParams;->mFeatureType:Ljava/lang/String;

    .line 267
    iget-object v1, p0, Lcom/sec/knox/container/ContainerCreationParams;->mFeatureType:Ljava/lang/String;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 268
    iput-object v0, p0, Lcom/sec/knox/container/ContainerCreationParams;->mFeatureType:Ljava/lang/String;

    .line 271
    :cond_a
    iget-object v0, p0, Lcom/sec/knox/container/ContainerCreationParams;->mPackagePoliciesMap:Ljava/util/HashMap;

    invoke-direct {p0, p1, v0}, Lcom/sec/knox/container/ContainerCreationParams;->deserializePackagePolicies(Landroid/os/Parcel;Ljava/util/HashMap;)V

    return-void
.end method

.method private deserializePackagePolicies(Landroid/os/Parcel;Ljava/util/HashMap;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .line 389
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p0, :cond_3

    .line 392
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 393
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 394
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    const/4 v5, 0x1

    move v6, v0

    move v7, v5

    :goto_1
    if-ge v6, v4, :cond_2

    if-ne v7, v5, :cond_0

    .line 398
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 399
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_0
    const/4 v8, 0x2

    if-ne v7, v8, :cond_1

    .line 401
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    new-array v8, v8, [B

    .line 402
    invoke-virtual {p1, v8}, Landroid/os/Parcel;->readByteArray([B)V

    .line 403
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_2
    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 407
    :cond_2
    invoke-virtual {p2, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private serializePackagePolicies(Landroid/os/Parcel;Ljava/util/HashMap;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .line 356
    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    .line 358
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 359
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 360
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 361
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    .line 363
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 365
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x1

    move v3, v2

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    if-ne v3, v2, :cond_1

    .line 366
    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 367
    check-cast v4, Ljava/lang/String;

    .line 368
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    const/4 v5, 0x2

    if-ne v3, v5, :cond_2

    .line 369
    instance-of v5, v4, [B

    if-eqz v5, :cond_2

    .line 370
    check-cast v4, [B

    .line 371
    array-length v5, v4

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 372
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeByteArray([B)V

    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 377
    :cond_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 381
    :cond_4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    :cond_5
    return-void
.end method


# virtual methods
.method public clone()Lcom/sec/knox/container/ContainerCreationParams;
    .locals 2

    .line 342
    new-instance v0, Lcom/sec/knox/container/ContainerCreationParams;

    invoke-direct {v0}, Lcom/sec/knox/container/ContainerCreationParams;-><init>()V

    .line 343
    iget v1, p0, Lcom/sec/knox/container/ContainerCreationParams;->mRequestId:I

    invoke-virtual {v0, v1}, Lcom/sec/knox/container/ContainerCreationParams;->setRequestId(I)V

    .line 344
    iget-object v1, p0, Lcom/sec/knox/container/ContainerCreationParams;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/knox/container/ContainerCreationParams;->setName(Ljava/lang/String;)V

    .line 345
    iget v1, p0, Lcom/sec/knox/container/ContainerCreationParams;->mLockType:I

    invoke-virtual {v0, v1}, Lcom/sec/knox/container/ContainerCreationParams;->setLockType(I)V

    .line 346
    iget-boolean v1, p0, Lcom/sec/knox/container/ContainerCreationParams;->mFingerprintPlus:Z

    invoke-virtual {v0, v1}, Lcom/sec/knox/container/ContainerCreationParams;->setFingerprintPlus(Z)V

    .line 347
    iget-boolean v1, p0, Lcom/sec/knox/container/ContainerCreationParams;->mIrisPlus:Z

    invoke-virtual {v0, v1}, Lcom/sec/knox/container/ContainerCreationParams;->setIrisPlus(Z)V

    .line 348
    iget-object v1, p0, Lcom/sec/knox/container/ContainerCreationParams;->mBackupPin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/knox/container/ContainerCreationParams;->setBackupPin(Ljava/lang/String;)V

    .line 349
    iget-boolean v1, p0, Lcom/sec/knox/container/ContainerCreationParams;->mRestoreSelected:Z

    invoke-virtual {v0, v1}, Lcom/sec/knox/container/ContainerCreationParams;->setRestoreSelection(Z)V

    .line 350
    iget-boolean p0, p0, Lcom/sec/knox/container/ContainerCreationParams;->isMigrationFlow:Z

    invoke-virtual {v0, p0}, Lcom/sec/knox/container/ContainerCreationParams;->setIsMigrationFlow(Z)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 15
    invoke-virtual {p0}, Lcom/sec/knox/container/ContainerCreationParams;->clone()Lcom/sec/knox/container/ContainerCreationParams;

    move-result-object p0

    return-object p0
.end method

.method public describeContents()I
    .locals 3

    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getRequestId :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/knox/container/ContainerCreationParams;->getRequestId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ContainerCreationParams"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getName :"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/knox/container/ContainerCreationParams;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAdminUid :"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/knox/container/ContainerCreationParams;->getAdminUid()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public getAdminUid()I
    .locals 0

    .line 86
    iget p0, p0, Lcom/sec/knox/container/ContainerCreationParams;->mAdminUid:I

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/sec/knox/container/ContainerCreationParams;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public getRequestId()I
    .locals 0

    .line 70
    iget p0, p0, Lcom/sec/knox/container/ContainerCreationParams;->mRequestId:I

    return p0
.end method

.method public setBackupPin(Ljava/lang/String;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/sec/knox/container/ContainerCreationParams;->mBackupPin:Ljava/lang/String;

    return-void
.end method

.method public setFingerprintPlus(Z)V
    .locals 0

    .line 164
    iput-boolean p1, p0, Lcom/sec/knox/container/ContainerCreationParams;->mFingerprintPlus:Z

    return-void
.end method

.method public setIrisPlus(Z)V
    .locals 0

    .line 172
    iput-boolean p1, p0, Lcom/sec/knox/container/ContainerCreationParams;->mIrisPlus:Z

    return-void
.end method

.method public setIsMigrationFlow(Z)V
    .locals 0

    .line 139
    iput-boolean p1, p0, Lcom/sec/knox/container/ContainerCreationParams;->isMigrationFlow:Z

    return-void
.end method

.method public setLockType(I)V
    .locals 0

    .line 130
    iput p1, p0, Lcom/sec/knox/container/ContainerCreationParams;->mLockType:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/sec/knox/container/ContainerCreationParams;->mName:Ljava/lang/String;

    return-void
.end method

.method public setRequestId(I)V
    .locals 0

    .line 66
    iput p1, p0, Lcom/sec/knox/container/ContainerCreationParams;->mRequestId:I

    return-void
.end method

.method public setRestoreSelection(Z)V
    .locals 0

    .line 181
    iput-boolean p1, p0, Lcom/sec/knox/container/ContainerCreationParams;->mRestoreSelected:Z

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 292
    iget-object v0, p0, Lcom/sec/knox/container/ContainerCreationParams;->mName:Ljava/lang/String;

    const-string v1, ""

    if-eqz v0, :cond_0

    .line 293
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 295
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 297
    :goto_0
    iget-object v0, p0, Lcom/sec/knox/container/ContainerCreationParams;->mPassword:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 298
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_1

    .line 300
    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 302
    :goto_1
    iget-object v0, p0, Lcom/sec/knox/container/ContainerCreationParams;->mBackupPin:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 303
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_2

    .line 305
    :cond_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 307
    :goto_2
    iget-object v0, p0, Lcom/sec/knox/container/ContainerCreationParams;->mAdminParam:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 308
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_3

    .line 310
    :cond_3
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 312
    :goto_3
    iget-object v0, p0, Lcom/sec/knox/container/ContainerCreationParams;->mResetPwdKey:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 313
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_4

    .line 315
    :cond_4
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 317
    :goto_4
    iget v0, p0, Lcom/sec/knox/container/ContainerCreationParams;->mRequestId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 318
    iget v0, p0, Lcom/sec/knox/container/ContainerCreationParams;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 319
    iget v0, p0, Lcom/sec/knox/container/ContainerCreationParams;->mLockType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 320
    iget v0, p0, Lcom/sec/knox/container/ContainerCreationParams;->mAdminUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 321
    iget v0, p0, Lcom/sec/knox/container/ContainerCreationParams;->mCreatorUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 322
    iget-boolean v0, p0, Lcom/sec/knox/container/ContainerCreationParams;->mFingerprintPlus:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 323
    iget-boolean v0, p0, Lcom/sec/knox/container/ContainerCreationParams;->mRestoreSelected:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 324
    iget-boolean v0, p0, Lcom/sec/knox/container/ContainerCreationParams;->mIrisPlus:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 325
    iget-object v0, p0, Lcom/sec/knox/container/ContainerCreationParams;->mConfigurationType:Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 328
    iget-boolean p2, p0, Lcom/sec/knox/container/ContainerCreationParams;->isMigrationFlow:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 330
    iget-boolean p2, p0, Lcom/sec/knox/container/ContainerCreationParams;->mAdminRemovable:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 332
    iget-object p2, p0, Lcom/sec/knox/container/ContainerCreationParams;->mFeatureType:Ljava/lang/String;

    if-eqz p2, :cond_5

    .line 333
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_5

    .line 335
    :cond_5
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 337
    :goto_5
    iget-object p2, p0, Lcom/sec/knox/container/ContainerCreationParams;->mPackagePoliciesMap:Ljava/util/HashMap;

    invoke-direct {p0, p1, p2}, Lcom/sec/knox/container/ContainerCreationParams;->serializePackagePolicies(Landroid/os/Parcel;Ljava/util/HashMap;)V

    return-void
.end method
