.class public final Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
.super Ljava/lang/Object;
.source "EnterpriseDeviceAdminInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static sKnownPolicies:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sNewToOldPermissionMapping:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sOldToNewPermissionMapping:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static sPoliciesDisplayOrder:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;",
            ">;"
        }
    .end annotation
.end field

.field static sRevKnownPolicies:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;",
            ">;"
        }
    .end annotation
.end field

.field static final timaversion:Z


# instance fields
.field final mReceiver:Landroid/content/pm/ResolveInfo;

.field mRequestedPermissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mUsesPolicies:Ljava/util/BitSet;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    const-string v0, "ro.config.timaversion"

    const-string v1, "0"

    .line 87
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "3.0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->timaversion:Z

    .line 908
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sOldToNewPermissionMapping:Ljava/util/HashMap;

    .line 909
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sNewToOldPermissionMapping:Ljava/util/HashMap;

    .line 913
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    .line 915
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sKnownPolicies:Ljava/util/HashMap;

    .line 917
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sRevKnownPolicies:Landroid/util/SparseArray;

    .line 1397
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x1b

    const-string v3, "android.permission.sec.MDM_APP_MGMT,com.samsung.android.knox.permission.KNOX_APP_MGMT"

    const v4, 0x1040841

    const v5, 0x1040730

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1403
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x1c

    const-string v3, "android.permission.sec.MDM_BLUETOOTH,com.samsung.android.knox.permission.KNOX_BLUETOOTH"

    const v4, 0x1040844

    const v5, 0x1040733

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1409
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x1d

    const-string v3, "android.permission.sec.MDM_INVENTORY,com.samsung.android.knox.permission.KNOX_INVENTORY"

    const v4, 0x1040850

    const v5, 0x104073f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1415
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x1e

    const-string v3, "android.permission.sec.MDM_EXCHANGE,com.samsung.android.knox.permission.KNOX_EXCHANGE"

    const v4, 0x104085b

    const v5, 0x104074a

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1421
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x1f

    const-string v3, "android.permission.sec.MDM_ROAMING,com.samsung.android.knox.permission.KNOX_ROAMING"

    const v4, 0x1040870

    const v5, 0x1040763

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1427
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x20

    const-string v3, "android.permission.sec.MDM_WIFI,com.samsung.android.knox.permission.KNOX_WIFI"

    const v4, 0x1040882

    const v5, 0x1040775

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1433
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x21

    const-string v3, "android.permission.sec.MDM_SECURITY,com.samsung.android.knox.permission.KNOX_SECURITY"

    const v4, 0x1040877

    const v5, 0x104076a

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1439
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x22

    const-string v3, "android.permission.sec.MDM_HW_CONTROL,com.samsung.android.knox.permission.KNOX_HW_CONTROL"

    const v4, 0x104085f

    const v5, 0x104074e

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1445
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x23

    const-string v3, "android.permission.sec.MDM_RESTRICTION,com.samsung.android.knox.permission.KNOX_RESTRICTION_MGMT"

    const v4, 0x104086f

    const v5, 0x1040762

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1451
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x24

    const-string v3, "android.permission.sec.MDM_LOCATION,com.samsung.android.knox.permission.KNOX_LOCATION"

    const v4, 0x1040869

    const v5, 0x104075c

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1457
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x25

    const-string v3, "android.permission.sec.MDM_EMAIL,com.samsung.android.knox.permission.KNOX_EMAIL"

    const v4, 0x1040854

    const v5, 0x1040743

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1463
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x26

    const-string v3, "android.permission.sec.MDM_VPN,com.samsung.android.knox.permission.KNOX_VPN"

    const v4, 0x1040881

    const v5, 0x1040774

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1469
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x27

    const-string v3, "android.permission.sec.MDM_APN,com.samsung.android.knox.permission.KNOX_APN"

    const v4, 0x104083f

    const v5, 0x104072e

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1475
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const v2, 0x104075e

    const v3, 0x104086b

    const/16 v4, 0x28

    const-string v5, "android.permission.sec.MDM_PHONE_RESTRICTION,com.samsung.android.knox.permission.KNOX_PHONE_RESTRICTION"

    invoke-direct {v1, v4, v5, v3, v2}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1481
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v4, 0x29

    const-string v5, "android.permission.sec.MDM_BROWSER_SETTINGS,com.samsung.android.knox.permission.KNOX_BROWSER_SETTINGS"

    const v6, 0x1040847

    const v7, 0x1040736

    invoke-direct {v1, v4, v5, v6, v7}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1487
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v4, 0x3a

    const-string v5, "com.sec.enterprise.mdm.permission.BROWSER_PROXY,com.samsung.android.knox.permission.KNOX_BROWSER_PROXY"

    const v6, 0x1040846

    const v7, 0x1040735

    invoke-direct {v1, v4, v5, v6, v7}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1493
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v4, 0x2a

    const-string v5, "android.permission.sec.MDM_DATE_TIME,com.samsung.android.knox.permission.KNOX_DATE_TIME"

    const v6, 0x104084e

    const v7, 0x104073d

    invoke-direct {v1, v4, v5, v6, v7}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1500
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v4, 0x3b

    const-string v5, "com.sec.enterprise.knox.KNOX_GENERIC_VPN,com.samsung.android.knox.permission.KNOX_VPN_GENERIC"

    const v6, 0x1040833

    const v7, 0x1040722

    invoke-direct {v1, v4, v5, v6, v7}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1508
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v4, 0x3c

    const-string v5, "com.sec.enterprise.knox.KNOX_CONTAINER_VPN,com.samsung.android.knox.permission.KNOX_VPN_CONTAINER"

    const v6, 0x104082c

    const v7, 0x104071b

    invoke-direct {v1, v4, v5, v6, v7}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1515
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v4, 0x2b

    const-string v5, "android.permission.sec.MDM_FIREWALL,com.samsung.android.knox.permission.KNOX_FIREWALL"

    const v6, 0x104085c

    const v7, 0x104074b

    invoke-direct {v1, v4, v5, v6, v7}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1521
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v4, 0x2c

    const-string v5, "android.permission.sec.ENTERPRISE_DEVICE_ADMIN,com.samsung.android.knox.permission.KNOX_ENTERPRISE_DEVICE_ADMIN"

    const v6, 0x1040855

    const v7, 0x1040744

    invoke-direct {v1, v4, v5, v6, v7}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1527
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v4, 0x2d

    const-string v5, "android.permission.sec.MDM_REMOTE_CONTROL,com.samsung.android.knox.permission.KNOX_REMOTE_CONTROL"

    const v6, 0x104086e

    const v7, 0x1040761

    invoke-direct {v1, v4, v5, v6, v7}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1533
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v4, 0x2e

    const-string v5, "android.permission.sec.MDM_KIOSK_MODE,com.samsung.android.knox.permission.KNOX_KIOSK_MODE"

    const v6, 0x1040862

    const v7, 0x1040751

    invoke-direct {v1, v4, v5, v6, v7}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1540
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v4, 0x2f

    const-string v5, "android.permission.sec.MDM_CERTIFICATE,com.samsung.android.knox.permission.KNOX_CERTIFICATE"

    const v6, 0x104084b

    const v7, 0x104073a

    invoke-direct {v1, v4, v5, v6, v7}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1546
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v4, 0x30

    const-string v5, "android.permission.sec.MDM_AUDIT_LOG,com.samsung.android.knox.permission.KNOX_AUDIT_LOG"

    const v6, 0x1040843

    const v7, 0x1040732

    invoke-direct {v1, v4, v5, v6, v7}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1552
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v4, 0x35

    const-string v5, "android.permission.sec.MDM_ENTERPRISE_CONTAINER,com.samsung.android.knox.permission.KNOX_CONTAINER"

    const v6, 0x1040856

    const v7, 0x1040745

    invoke-direct {v1, v4, v5, v6, v7}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1560
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v4, 0x31

    const-string v5, "android.permission.sec.MDM_LDAP,com.samsung.android.knox.permission.KNOX_LDAP"

    const v6, 0x1040867

    const v7, 0x1040756

    invoke-direct {v1, v4, v5, v6, v7}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1566
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v4, 0x33

    const-string v5, "android.permission.sec.MDM_LOCKSCREEN,com.samsung.android.knox.permission.KNOX_LOCKSCREEN"

    const v6, 0x1040868

    const v7, 0x1040757

    invoke-direct {v1, v4, v5, v6, v7}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1572
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v4, 0x34

    const-string v5, "android.permission.sec.MDM_DUAL_SIM,com.samsung.android.knox.permission.KNOX_DUAL_SIM"

    const v6, 0x1040852

    const v7, 0x1040741

    invoke-direct {v1, v4, v5, v6, v7}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1581
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v4, 0x48

    const-string v5, "com.sec.enterprise.mdm.permission.MDM_SSO,com.samsung.android.knox.permission.KNOX_SSO"

    const v6, 0x1040873

    const v7, 0x1040766

    invoke-direct {v1, v4, v5, v6, v7}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1589
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v4, 0x32

    const-string v5, "android.permission.sec.MDM_GEOFENCING,com.samsung.android.knox.permission.KNOX_GEOFENCING"

    const v6, 0x104085d

    const v7, 0x104074c

    invoke-direct {v1, v4, v5, v6, v7}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1595
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v4, 0x36

    const-string v5, "android.permission.sec.MDM_LICENSE_LOG,com.samsung.android.knox.permission.KNOX_LICENSE_LOG"

    const v6, 0x1040853

    const v7, 0x1040742

    invoke-direct {v1, v4, v5, v6, v7}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1602
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v4, 0x37

    const-string v5, "android.permission.sec.MDM_MULTI_USER_MGMT,com.samsung.android.knox.permission.KNOX_MULTI_USER_MGMT"

    const v6, 0x104086a

    const v7, 0x104075d

    invoke-direct {v1, v4, v5, v6, v7}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1608
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v4, 0x38

    const-string v5, "android.permission.sec.MDM_BLUETOOTH_SECUREMODE,com.samsung.android.knox.permission.KNOX_BLUETOOTH_SECUREMODE"

    const v6, 0x1040845

    const v7, 0x1040734

    invoke-direct {v1, v4, v5, v6, v7}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1614
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v4, 0x39

    const-string v5, "com.sec.enterprise.knox.permission.KNOX_ATTESTATION,com.samsung.android.knox.permission.KNOX_REMOTE_ATTESTATION"

    const v6, 0x1040864

    const v7, 0x1040753

    invoke-direct {v1, v4, v5, v6, v7}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1620
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v4, 0x70

    const-string v5, "com.samsung.android.knox.permission.KNOX_ENHANCED_ATTESTATION"

    const v6, 0x104081c

    const v7, 0x104070b

    invoke-direct {v1, v4, v5, v6, v7}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1626
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v4, 0x6f

    const-string v5, "com.samsung.android.knox.permission.KNOX_MOBILE_THREAT_DEFENSE"

    const v6, 0x104087b

    const v7, 0x104076e

    invoke-direct {v1, v4, v5, v6, v7}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1633
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v4, 0x3e

    const-string v5, "com.sec.enterprise.knox.permission.KNOX_RCP_SYNC_MGMT,com.samsung.android.knox.permission.KNOX_CONTAINER_RCP"

    const v6, 0x1040865

    const v7, 0x1040754

    invoke-direct {v1, v4, v5, v6, v7}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1640
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v4, 0x3d

    const-string v5, "com.sec.enterprise.knox.permission.KNOX_ACTIVATE_DEVICE_PERMISSIONS,com.samsung.android.knox.permission.KNOX_ACTIVATE_DEVICE_PERMISSIONS_INTERNAL"

    const v6, 0x1040863

    const v7, 0x1040752

    invoke-direct {v1, v4, v5, v6, v7}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1646
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v4, 0x74

    const-string v5, "com.sec.enterprise.knox.permission.KNOX_DEACTIVATE_LICENSE"

    const v6, 0x104084f

    const v7, 0x104073e

    invoke-direct {v1, v4, v5, v6, v7}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1653
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v4, 0x3f

    const-string v5, "com.sec.enterprise.knox.permission.KNOX_SEAMS,com.samsung.android.knox.permission.KNOX_SEAMS_MGMT"

    const v6, 0x1040875

    const v7, 0x1040768

    invoke-direct {v1, v4, v5, v6, v7}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1659
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const v4, 0x1040769

    const v5, 0x1040876

    const/16 v6, 0x40

    const-string v7, "com.samsung.android.knox.permission.KNOX_SEAMS_SEPOLICY_INTERNAL"

    invoke-direct {v1, v6, v7, v5, v4}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1666
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v6, 0x41

    const-string v7, "com.sec.enterprise.knox.permission.KNOX_RESTRICTION,com.samsung.android.knox.permission.KNOX_ADVANCED_RESTRICTION"

    const v8, 0x1040866

    const v9, 0x1040755

    invoke-direct {v1, v6, v7, v8, v9}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1673
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v6, 0x44

    const-string v7, "com.sec.enterprise.knox.permission.CUSTOM_SETTING,com.samsung.android.knox.permission.KNOX_CUSTOM_SETTING"

    const v8, 0x104082f

    const v9, 0x104071e

    invoke-direct {v1, v6, v7, v8, v9}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1679
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const v6, 0x104071f

    const v7, 0x1040830

    const/16 v8, 0x45

    const-string v9, "com.sec.enterprise.knox.permission.CUSTOM_SYSTEM,com.samsung.android.knox.permission.KNOX_CUSTOM_SYSTEM"

    invoke-direct {v1, v8, v9, v7, v6}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1685
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const v8, 0x104071c

    const v9, 0x104082d

    const/16 v10, 0x46

    const-string v11, "com.sec.enterprise.knox.permission.CUSTOM_SEALEDMODE,com.samsung.android.knox.permission.KNOX_CUSTOM_SEALEDMODE"

    invoke-direct {v1, v10, v11, v9, v8}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1691
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v10, 0x4b

    const-string v11, "com.sec.enterprise.knox.permission.CUSTOM_PROKIOSK,com.samsung.android.knox.permission.KNOX_CUSTOM_PROKIOSK"

    invoke-direct {v1, v10, v11, v9, v8}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1698
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const v8, 0x104070c

    const v9, 0x104081d

    const/16 v10, 0x49

    const-string v11, "com.sec.enterprise.knox.permission.KNOX_ENTERPRISE_BILLING,com.samsung.android.knox.permission.KNOX_EBILLING"

    invoke-direct {v1, v10, v11, v9, v8}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1704
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v10, 0x42

    const-string v11, "com.sec.enterprise.knox.permission.KNOX_CCM,com.samsung.android.knox.permission.KNOX_CCM_KEYSTORE"

    const v12, 0x1040849

    const v13, 0x1040738

    invoke-direct {v1, v10, v11, v12, v13}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1710
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v10, 0x4d

    const-string v11, "com.sec.enterprise.permission.KNOX_UCM_ESE,com.samsung.android.knox.permission.KNOX_UCM_ESE_MGMT"

    const v12, 0x104087f

    const v13, 0x1040772

    invoke-direct {v1, v10, v11, v12, v13}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1716
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v10, 0x4e

    const-string v11, "com.sec.enterprise.permission.KNOX_UCM_OTHER,com.samsung.android.knox.permission.KNOX_UCM_OTHER_MGMT"

    const v12, 0x1040880

    const v13, 0x1040773

    invoke-direct {v1, v10, v11, v12, v13}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1722
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v10, 0x4f

    const-string v11, "com.sec.enterprise.permission.KNOX_UCM_PLUGIN,com.samsung.android.knox.permission.KNOX_UCM_PLUGIN_SERVICE"

    const v12, 0x10408c0

    const v13, 0x10407b3

    invoke-direct {v1, v10, v11, v12, v13}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1728
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v10, 0x51

    const-string v11, "com.sec.enterprise.permission.KNOX_UCM_PRIVILEGED,com.samsung.android.knox.permission.KNOX_UCM_PRIVILEGED_MGMT"

    const v12, 0x104087e

    const v13, 0x1040771

    invoke-direct {v1, v10, v11, v12, v13}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1734
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v10, 0x43

    const-string v11, "com.sec.enterprise.knox.permission.KNOX_KEYSTORE,com.samsung.android.knox.permission.KNOX_TIMA_KEYSTORE"

    const v12, 0x1040860

    const v13, 0x104074f

    invoke-direct {v1, v10, v11, v12, v13}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1740
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v10, 0x50

    const-string v11, "com.sec.enterprise.permission.KNOX_KEYSTORE_PER_APP,com.samsung.android.knox.permission.KNOX_TIMA_KEYSTORE_PER_APP"

    const v12, 0x1040861

    const v13, 0x1040750

    invoke-direct {v1, v10, v11, v12, v13}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1747
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v10, 0x47

    const-string v11, "com.sec.enterprise.knox.permission.KNOX_CERTENROLL,com.samsung.android.knox.permission.KNOX_CERTIFICATE_ENROLLMENT"

    const v12, 0x1040874

    const v13, 0x1040767

    invoke-direct {v1, v10, v11, v12, v13}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1755
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v10, 0x4a

    const-string v11, "com.sec.enterprise.permission.KNOX_DLP,com.samsung.android.knox.permission.KNOX_DLP_MGMT"

    const v12, 0x104084d

    const v13, 0x104073c

    invoke-direct {v1, v10, v11, v12, v13}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1763
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v10, 0x4c

    const-string v11, "com.sec.enterprise.permission.KNOX_SDP,com.samsung.android.knox.permission.KNOX_SENSITIVE_DATA_PROTECTION"

    const v12, 0x1040871

    const v13, 0x1040764

    invoke-direct {v1, v10, v11, v12, v13}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1770
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v10, 0x52

    const-string v11, "com.samsung.android.knox.permission.KNOX_GLOBALPROXY"

    const v12, 0x104085e

    const v13, 0x104074d

    invoke-direct {v1, v10, v11, v12, v13}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1776
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v10, 0x53

    const-string v11, "com.samsung.android.knox.permission.KNOX_CERT_PROVISIONING"

    const v12, 0x104084a

    const v13, 0x1040739

    invoke-direct {v1, v10, v11, v12, v13}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1782
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v10, 0x54

    const-string v11, "com.samsung.android.knox.permission.KNOX_CLIPBOARD"

    const v12, 0x104084c

    const v13, 0x104073b

    invoke-direct {v1, v10, v11, v12, v13}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1788
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v10, 0x55

    const-string v11, "com.samsung.android.knox.permission.KNOX_ADVANCED_APP_MGMT"

    const v12, 0x104082a

    const v13, 0x1040719

    invoke-direct {v1, v10, v11, v12, v13}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1794
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v10, 0x56

    const-string v11, "com.samsung.android.knox.permission.KNOX_ADVANCED_SECURITY"

    const v12, 0x104082b

    const v13, 0x104071a

    invoke-direct {v1, v10, v11, v12, v13}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1800
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v10, 0x57

    const-string v11, "com.samsung.android.knox.permission.KNOX_NPA"

    const v12, 0x1040835

    const v13, 0x1040724

    invoke-direct {v1, v10, v11, v12, v13}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1806
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v10, 0x58

    const-string v11, "com.sec.enterprise.knox.permission.KNOX_ENTERPRISE_BILLING_NOMDM,com.samsung.android.knox.permission.KNOX_EBILLING_NOMDM"

    invoke-direct {v1, v10, v11, v9, v8}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1812
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v8, 0x59

    const-string v9, "com.samsung.android.knox.permission.KNOX_DEX"

    const v10, 0x1040851

    const v11, 0x1040740

    invoke-direct {v1, v8, v9, v10, v11}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1818
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v8, 0x5a

    const-string v9, "com.samsung.android.knox.permission.KNOX_CUSTOM_DEX"

    invoke-direct {v1, v8, v9, v7, v6}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1824
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v6, 0x5b

    const-string v7, "com.samsung.android.knox.permission.KNOX_UCM_MGMT"

    const v8, 0x10408bf

    const v9, 0x10407b2

    invoke-direct {v1, v6, v7, v8, v9}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1830
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v6, 0x5c

    const-string v7, "com.samsung.android.knox.permission.KNOX_DUAL_DAR"

    const v8, 0x1040832

    const v9, 0x1040721

    invoke-direct {v1, v6, v7, v8, v9}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1836
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v6, 0x5e

    const-string v7, "com.samsung.android.knox.permission.KNOX_SIM_RESTRICTION"

    invoke-direct {v1, v6, v7, v3, v2}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1842
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x5f

    const-string v3, "android.permission.sec.MDM_APP_PERMISSION_MGMT,com.samsung.android.knox.permission.KNOX_APP_PERMISSION_MGMT"

    const v6, 0x1040842

    const v7, 0x1040731

    invoke-direct {v1, v2, v3, v6, v7}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1848
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x60

    const-string v3, "android.permission.sec.MDM_SMARTCARD,com.samsung.android.knox.permission.KNOX_SMARTCARD"

    const v6, 0x104087a

    const v7, 0x104076d

    invoke-direct {v1, v2, v3, v6, v7}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1854
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x73

    const-string v3, "com.samsung.android.knox.permission.KNOX_HDM"

    const v6, 0x1040834

    const v7, 0x1040723

    invoke-direct {v1, v2, v3, v6, v7}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1862
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x7c

    const-string v3, "com.sec.enterprise.knox.permission.CUSTOM_RUBENS_FEATURES"

    const v6, 0x1040819

    const v7, 0x1040708

    invoke-direct {v1, v2, v3, v6, v7}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1868
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x7d

    const-string v3, "android.permission.sec.MDM_ENTERPRISE_SSO"

    const v6, 0x1040858

    const v7, 0x1040747

    invoke-direct {v1, v2, v3, v6, v7}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1874
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x7e

    const-string v3, "com.sec.enterprise.knox.permission.KNOX_SEAMS_SEPOLICY"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1880
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x7b

    const-string v3, "com.sec.enterprise.knox.permission.KNOX_TRUSTED_PINPAD"

    const v4, 0x104087d

    const v5, 0x1040770

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1886
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x72

    const-string v3, "com.samsung.android.knox.permission.KNOX_DEVICE_CONFIGURATION"

    const v4, 0x1040831

    const v5, 0x1040720

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1892
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x7a

    const-string v3, "android.permission.sec.MDM_ANALYTICS"

    const v4, 0x104083e

    const v5, 0x104072d

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1899
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x79

    const-string v3, "android.permission.sec.MDM_ENTERPRISE_ISL"

    const v4, 0x1040857

    const v5, 0x1040746

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1905
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x77

    const-string v3, "android.permission.sec.MDM_APP_BACKUP"

    const v4, 0x1040840

    const v5, 0x104072f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1911
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x78

    const-string v3, "android.permission.sec.MDM_SEANDROID"

    const v4, 0x1040872

    const v5, 0x1040765

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1918
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x76

    const-string v3, "android.permission.sec.MDM_ENTERPRISE_VPN"

    const v4, 0x1040859

    const v5, 0x1040748

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1925
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x75

    const-string v3, "android.permission.sec.MDM_CALLING"

    const v4, 0x1040848

    const v5, 0x1040737

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    move v1, v0

    .line 1939
    :goto_0
    sget-object v2, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1940
    sget-object v2, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    .line 1941
    sget-object v3, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sRevKnownPolicies:Landroid/util/SparseArray;

    iget v4, v2, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;->ident:I

    invoke-virtual {v3, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1942
    sget-object v3, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sKnownPolicies:Ljava/util/HashMap;

    iget-object v4, v2, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;->tag:Ljava/lang/String;

    iget v5, v2, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;->ident:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1944
    iget-object v2, v2, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;->tag:Ljava/lang/String;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1945
    array-length v3, v2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 1946
    sget-object v3, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sOldToNewPermissionMapping:Ljava/util/HashMap;

    aget-object v4, v2, v0

    const/4 v5, 0x1

    aget-object v6, v2, v5

    invoke-virtual {v3, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1947
    sget-object v3, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sNewToOldPermissionMapping:Ljava/util/HashMap;

    aget-object v4, v2, v5

    aget-object v2, v2, v0

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2268
    :cond_1
    new-instance v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$1;

    invoke-direct {v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 2007
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1976
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mRequestedPermissions:Ljava/util/List;

    .line 2008
    sget-object v0, Landroid/content/pm/ResolveInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iput-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    .line 2009
    invoke-direct {p0, p1}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->readBitSet(Landroid/os/Parcel;)Ljava/util/BitSet;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mUsesPolicies:Ljava/util/BitSet;

    return-void
.end method

.method private readBitSet(Landroid/os/Parcel;)Ljava/util/BitSet;
    .locals 3

    .line 2257
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p0

    .line 2258
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_0

    .line 2260
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private writeBitSet(Landroid/os/Parcel;Ljava/util/BitSet;)V
    .locals 1

    .line 2250
    invoke-virtual {p2}, Ljava/util/BitSet;->cardinality()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p0, -0x1

    move v0, p0

    :goto_0
    add-int/lit8 v0, v0, 0x1

    .line 2251
    invoke-virtual {p2, v0}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    if-eq v0, p0, :cond_0

    .line 2252
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 2233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeviceAdminInfo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 2243
    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/ResolveInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2245
    iget-object p2, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mUsesPolicies:Ljava/util/BitSet;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->writeBitSet(Landroid/os/Parcel;Ljava/util/BitSet;)V

    return-void
.end method
