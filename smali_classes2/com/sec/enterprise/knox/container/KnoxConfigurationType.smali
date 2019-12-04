.class public Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
.super Ljava/lang/Object;
.source "KnoxConfigurationType.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/sec/enterprise/knox/container/KnoxConfigurationType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected mAdminUid:I

.field private mAllowChangeDataSettings:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field

.field protected mAllowMultiwindowMode:Z

.field private mAllowSwitch:Z

.field protected mAllowTaskManager:Z

.field protected mAllowUSBDebugging:Z

.field protected mAppInstallationList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mAppRemoveList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAuthenticationConfig:Lcom/sec/enterprise/identity/AuthenticationConfig;

.field protected mBiometricAuthValue:I

.field protected mCustomBadgeIcon:Ljava/lang/String;

.field protected mCustomHomeScreenWallpaper:Ljava/lang/String;

.field protected mCustomLockScreenWallpaper:Ljava/lang/String;

.field protected mCustomStatusIcon:Ljava/lang/String;

.field protected mCustomStatusLabel:Ljava/lang/String;

.field protected mEC:Z

.field protected mECBadge:Ljava/lang/String;

.field protected mECIcon:Ljava/lang/String;

.field protected mECName:Ljava/lang/String;

.field protected mFOTADisableAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mFOTAReenableAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mForbiddenStrings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mGoogleAppsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mIsBiometricAuthEnabled:Z

.field private mIsDefaultConfigType:Z

.field protected mKeyguardDisabledFeatures:I

.field private mLayoutType:I

.field protected mManagedType:Z

.field protected mMaximumCharacterOccurences:I

.field protected mMaximumCharacterSequenceLength:I

.field protected mMaximumFailedPasswordsForWipe:I

.field protected mMaximumNumericSequenceLength:I

.field protected mMaximumTimeToLock:I

.field protected mMultifactorAuthEnabled:Z

.field protected mName:Ljava/lang/String;

.field protected mNameIcon:Ljava/lang/String;

.field protected mPasswordMinimumLength:I

.field protected mPasswordMinimumLetters:I

.field protected mPasswordMinimumLowerCase:I

.field protected mPasswordMinimumNonLetters:I

.field protected mPasswordMinimumNumeric:I

.field protected mPasswordMinimumSymbols:I

.field protected mPasswordMinimumUpperCase:I

.field protected mPasswordPattern:Ljava/lang/String;

.field protected mPasswordQuality:I

.field protected mPersonaList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mProtectedList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRCPDataSettings:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private mRCPNotifSettings:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field

.field protected mSimplePasswordEnabled:Z

.field protected mUserId:I

.field protected mVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1861
    new-instance v0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType$1;

    invoke-direct {v0}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType$1;-><init>()V

    sput-object v0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1876
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 64
    iput v0, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mAdminUid:I

    const/4 v1, -0x1

    .line 65
    iput v1, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mUserId:I

    const-string v2, "custom"

    .line 66
    iput-object v2, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mVersion:Ljava/lang/String;

    .line 67
    iput v0, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mPasswordMinimumNonLetters:I

    .line 68
    iput v0, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mPasswordMinimumLetters:I

    .line 69
    iput v0, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mPasswordMinimumNumeric:I

    .line 70
    iput v0, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mPasswordMinimumUpperCase:I

    .line 71
    iput v0, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mPasswordMinimumLowerCase:I

    .line 72
    iput v0, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mPasswordMinimumSymbols:I

    .line 73
    iput v0, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mPasswordQuality:I

    .line 74
    iput v0, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mMaximumFailedPasswordsForWipe:I

    .line 75
    iput v0, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mMaximumCharacterOccurences:I

    .line 76
    iput v0, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mMaximumCharacterSequenceLength:I

    .line 77
    iput v0, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mMaximumNumericSequenceLength:I

    .line 78
    iput v0, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mPasswordMinimumLength:I

    .line 79
    iput v0, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mMaximumTimeToLock:I

    const/4 v2, 0x0

    .line 80
    iput-object v2, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mPasswordPattern:Ljava/lang/String;

    .line 81
    iput-object v2, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mName:Ljava/lang/String;

    .line 82
    iput-object v2, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mCustomBadgeIcon:Ljava/lang/String;

    .line 83
    iput-object v2, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mCustomHomeScreenWallpaper:Ljava/lang/String;

    .line 85
    iput-boolean v0, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mEC:Z

    .line 86
    iput-object v2, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mNameIcon:Ljava/lang/String;

    .line 87
    iput-object v2, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mECName:Ljava/lang/String;

    .line 88
    iput-object v2, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mECIcon:Ljava/lang/String;

    .line 89
    iput-object v2, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mECBadge:Ljava/lang/String;

    .line 91
    iput-object v2, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mCustomLockScreenWallpaper:Ljava/lang/String;

    .line 92
    iput-object v2, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mCustomStatusLabel:Ljava/lang/String;

    .line 93
    iput-object v2, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mCustomStatusIcon:Ljava/lang/String;

    .line 94
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mPersonaList:Ljava/util/List;

    .line 95
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mAppInstallationList:Ljava/util/List;

    .line 97
    iput v1, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mLayoutType:I

    const/4 v2, 0x1

    .line 98
    iput-boolean v2, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mAllowSwitch:Z

    .line 99
    iput-boolean v0, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mIsDefaultConfigType:Z

    .line 103
    new-instance v3, Lcom/sec/enterprise/identity/AuthenticationConfig;

    invoke-direct {v3}, Lcom/sec/enterprise/identity/AuthenticationConfig;-><init>()V

    iput-object v3, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mAuthenticationConfig:Lcom/sec/enterprise/identity/AuthenticationConfig;

    .line 112
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mAppRemoveList:Ljava/util/List;

    .line 119
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mFOTADisableAppList:Ljava/util/List;

    .line 126
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mFOTAReenableAppList:Ljava/util/List;

    .line 127
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mForbiddenStrings:Ljava/util/List;

    .line 128
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mProtectedList:Ljava/util/List;

    .line 129
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mGoogleAppsList:Ljava/util/List;

    .line 131
    iput-boolean v0, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mManagedType:Z

    .line 132
    iput-boolean v2, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mSimplePasswordEnabled:Z

    .line 133
    iput-boolean v0, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mMultifactorAuthEnabled:Z

    .line 135
    iput-boolean v2, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mAllowMultiwindowMode:Z

    .line 136
    iput-boolean v2, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mAllowTaskManager:Z

    .line 141
    iput-boolean v0, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mIsBiometricAuthEnabled:Z

    .line 146
    iput v1, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mBiometricAuthValue:I

    .line 152
    iput-boolean v0, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mAllowUSBDebugging:Z

    .line 154
    iput v1, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mKeyguardDisabledFeatures:I

    .line 156
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mRCPDataSettings:Ljava/util/HashMap;

    .line 159
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mAllowChangeDataSettings:Ljava/util/HashMap;

    .line 162
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mRCPNotifSettings:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 6

    .line 1881
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 64
    iput v0, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mAdminUid:I

    const/4 v1, -0x1

    .line 65
    iput v1, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mUserId:I

    const-string v2, "custom"

    .line 66
    iput-object v2, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mVersion:Ljava/lang/String;

    .line 67
    iput v0, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mPasswordMinimumNonLetters:I

    .line 68
    iput v0, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mPasswordMinimumLetters:I

    .line 69
    iput v0, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mPasswordMinimumNumeric:I

    .line 70
    iput v0, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mPasswordMinimumUpperCase:I

    .line 71
    iput v0, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mPasswordMinimumLowerCase:I

    .line 72
    iput v0, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mPasswordMinimumSymbols:I

    .line 73
    iput v0, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mPasswordQuality:I

    .line 74
    iput v0, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mMaximumFailedPasswordsForWipe:I

    .line 75
    iput v0, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mMaximumCharacterOccurences:I

    .line 76
    iput v0, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mMaximumCharacterSequenceLength:I

    .line 77
    iput v0, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mMaximumNumericSequenceLength:I

    .line 78
    iput v0, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mPasswordMinimumLength:I

    .line 79
    iput v0, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mMaximumTimeToLock:I

    const/4 v3, 0x0

    .line 80
    iput-object v3, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mPasswordPattern:Ljava/lang/String;

    .line 81
    iput-object v3, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mName:Ljava/lang/String;

    .line 82
    iput-object v3, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mCustomBadgeIcon:Ljava/lang/String;

    .line 83
    iput-object v3, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mCustomHomeScreenWallpaper:Ljava/lang/String;

    .line 85
    iput-boolean v0, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mEC:Z

    .line 86
    iput-object v3, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mNameIcon:Ljava/lang/String;

    .line 87
    iput-object v3, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mECName:Ljava/lang/String;

    .line 88
    iput-object v3, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mECIcon:Ljava/lang/String;

    .line 89
    iput-object v3, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mECBadge:Ljava/lang/String;

    .line 91
    iput-object v3, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mCustomLockScreenWallpaper:Ljava/lang/String;

    .line 92
    iput-object v3, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mCustomStatusLabel:Ljava/lang/String;

    .line 93
    iput-object v3, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mCustomStatusIcon:Ljava/lang/String;

    .line 94
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mPersonaList:Ljava/util/List;

    .line 95
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mAppInstallationList:Ljava/util/List;

    .line 97
    iput v1, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mLayoutType:I

    const/4 v4, 0x1

    .line 98
    iput-boolean v4, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mAllowSwitch:Z

    .line 99
    iput-boolean v0, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mIsDefaultConfigType:Z

    .line 103
    new-instance v5, Lcom/sec/enterprise/identity/AuthenticationConfig;

    invoke-direct {v5}, Lcom/sec/enterprise/identity/AuthenticationConfig;-><init>()V

    iput-object v5, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mAuthenticationConfig:Lcom/sec/enterprise/identity/AuthenticationConfig;

    .line 112
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mAppRemoveList:Ljava/util/List;

    .line 119
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mFOTADisableAppList:Ljava/util/List;

    .line 126
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mFOTAReenableAppList:Ljava/util/List;

    .line 127
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mForbiddenStrings:Ljava/util/List;

    .line 128
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mProtectedList:Ljava/util/List;

    .line 129
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mGoogleAppsList:Ljava/util/List;

    .line 131
    iput-boolean v0, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mManagedType:Z

    .line 132
    iput-boolean v4, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mSimplePasswordEnabled:Z

    .line 133
    iput-boolean v0, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mMultifactorAuthEnabled:Z

    .line 135
    iput-boolean v4, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mAllowMultiwindowMode:Z

    .line 136
    iput-boolean v4, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mAllowTaskManager:Z

    .line 141
    iput-boolean v0, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mIsBiometricAuthEnabled:Z

    .line 146
    iput v1, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mBiometricAuthValue:I

    .line 152
    iput-boolean v0, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mAllowUSBDebugging:Z

    .line 154
    iput v1, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mKeyguardDisabledFeatures:I

    .line 156
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mRCPDataSettings:Ljava/util/HashMap;

    .line 159
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mAllowChangeDataSettings:Ljava/util/HashMap;

    .line 162
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mRCPNotifSettings:Ljava/util/HashMap;

    .line 1883
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mName:Ljava/lang/String;

    .line 1884
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1886
    iput-object v1, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mVersion:Ljava/lang/String;

    goto :goto_0

    .line 1888
    :cond_0
    iput-object v2, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mVersion:Ljava/lang/String;

    .line 1890
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mPasswordMinimumNonLetters:I

    .line 1891
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mPasswordMinimumLetters:I

    .line 1892
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mPasswordMinimumNumeric:I

    .line 1893
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mPasswordMinimumUpperCase:I

    .line 1894
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mPasswordMinimumLowerCase:I

    .line 1895
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mPasswordMinimumSymbols:I

    .line 1896
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mPasswordQuality:I

    .line 1897
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mMaximumTimeToLock:I

    .line 1898
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mMaximumFailedPasswordsForWipe:I

    .line 1899
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v4, :cond_1

    move v1, v4

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    iput-boolean v1, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mManagedType:Z

    .line 1900
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1901
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    move-object v1, v3

    .line 1904
    :cond_3
    iput-object v1, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mCustomBadgeIcon:Ljava/lang/String;

    .line 1905
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 1906
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    move-object v1, v3

    .line 1909
    :cond_5
    iput-object v1, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mCustomHomeScreenWallpaper:Ljava/lang/String;

    .line 1911
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v4, :cond_6

    move v1, v4

    goto :goto_2

    :cond_6
    move v1, v0

    :goto_2
    iput-boolean v1, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mEC:Z

    .line 1912
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reading from parcel mEC "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mEC:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KnoxConfigurationType"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1914
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 1915
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_7
    move-object v1, v3

    .line 1918
    :cond_8
    iput-object v1, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mNameIcon:Ljava/lang/String;

    .line 1920
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 1921
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_9
    move-object v1, v3

    .line 1924
    :cond_a
    iput-object v1, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mECName:Ljava/lang/String;

    .line 1926
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 1927
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_c

    :cond_b
    move-object v1, v3

    .line 1930
    :cond_c
    iput-object v1, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mECIcon:Ljava/lang/String;

    .line 1932
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 1933
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_e

    :cond_d
    move-object v1, v3

    .line 1936
    :cond_e
    iput-object v1, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mECBadge:Ljava/lang/String;

    .line 1938
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 1939
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_10

    :cond_f
    move-object v1, v3

    .line 1943
    :cond_10
    iput-object v1, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mCustomLockScreenWallpaper:Ljava/lang/String;

    .line 1944
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 1945
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_12

    :cond_11
    move-object v1, v3

    .line 1948
    :cond_12
    iput-object v1, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mCustomStatusLabel:Ljava/lang/String;

    .line 1949
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_13

    .line 1950
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_14

    :cond_13
    move-object v1, v3

    .line 1953
    :cond_14
    iput-object v1, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mCustomStatusIcon:Ljava/lang/String;

    .line 1954
    iget-object v1, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mAppInstallationList:Ljava/util/List;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 1955
    iget-object v1, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mForbiddenStrings:Ljava/util/List;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 1956
    iget-object v1, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mProtectedList:Ljava/util/List;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 1957
    iget-object v1, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mGoogleAppsList:Ljava/util/List;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 1958
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mMaximumCharacterOccurences:I

    .line 1959
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mMaximumCharacterSequenceLength:I

    .line 1960
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mMaximumNumericSequenceLength:I

    .line 1961
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mPasswordMinimumLength:I

    .line 1962
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_15

    .line 1963
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_16

    :cond_15
    move-object v1, v3

    .line 1966
    :cond_16
    iput-object v1, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mPasswordPattern:Ljava/lang/String;

    .line 1967
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v4, :cond_17

    move v1, v4

    goto :goto_3

    :cond_17
    move v1, v0

    :goto_3
    iput-boolean v1, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mSimplePasswordEnabled:Z

    .line 1968
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v4, :cond_18

    move v1, v4

    goto :goto_4

    :cond_18
    move v1, v0

    :goto_4
    iput-boolean v1, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mMultifactorAuthEnabled:Z

    .line 1970
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v4, :cond_19

    move v1, v4

    goto :goto_5

    :cond_19
    move v1, v0

    :goto_5
    iput-boolean v1, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mAllowMultiwindowMode:Z

    .line 1971
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v4, :cond_1a

    move v1, v4

    goto :goto_6

    :cond_1a
    move v1, v0

    :goto_6
    iput-boolean v1, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mAllowTaskManager:Z

    .line 1972
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v4, :cond_1b

    move v1, v4

    goto :goto_7

    :cond_1b
    move v1, v0

    :goto_7
    iput-boolean v1, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mIsBiometricAuthEnabled:Z

    .line 1973
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mBiometricAuthValue:I

    .line 1974
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v4, :cond_1c

    move v1, v4

    goto :goto_8

    :cond_1c
    move v1, v0

    :goto_8
    iput-boolean v1, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mAllowUSBDebugging:Z

    .line 1977
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mLayoutType:I

    .line 1978
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v4, :cond_1d

    move v1, v4

    goto :goto_9

    :cond_1d
    move v1, v0

    :goto_9
    iput-boolean v1, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mAllowSwitch:Z

    .line 1979
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v4, :cond_1e

    move v0, v4

    :cond_1e
    iput-boolean v0, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mIsDefaultConfigType:Z

    .line 1983
    iget-object v0, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mRCPDataSettings:Ljava/util/HashMap;

    invoke-direct {p0, p1, v0}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->deserializeRCPSettings(Landroid/os/Parcel;Ljava/util/HashMap;)V

    .line 1984
    iget-object v0, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mAllowChangeDataSettings:Ljava/util/HashMap;

    invoke-direct {p0, p1, v0}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->deserializeRCPSettings(Landroid/os/Parcel;Ljava/util/HashMap;)V

    .line 1985
    iget-object v0, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mRCPNotifSettings:Ljava/util/HashMap;

    invoke-direct {p0, p1, v0}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->deserializeRCPSettings(Landroid/os/Parcel;Ljava/util/HashMap;)V

    .line 1989
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/sec/enterprise/identity/AuthenticationConfig;

    iput-object v0, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mAuthenticationConfig:Lcom/sec/enterprise/identity/AuthenticationConfig;

    .line 1992
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mKeyguardDisabledFeatures:I

    return-void
.end method

.method private deserializeRCPSettings(Landroid/os/Parcel;Ljava/util/HashMap;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;>;)V"
        }
    .end annotation

    .line 2002
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p0, :cond_1

    .line 2005
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2006
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2007
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move v5, v0

    :goto_1
    if-ge v5, v4, :cond_0

    .line 2009
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 2010
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 2011
    new-instance v8, Landroid/util/Pair;

    invoke-direct {v8, v6, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2012
    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 2014
    :cond_0
    invoke-virtual {p2, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private serializeRCPSettings(Landroid/os/Parcel;Ljava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;>;)V"
        }
    .end annotation

    .line 2137
    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 2139
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2140
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2141
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2142
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_1

    .line 2144
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2145
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 2146
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2147
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_1

    .line 2150
    :cond_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 2154
    :cond_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    :cond_3
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 2027
    iget-object v0, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mName:Ljava/lang/String;

    const-string v1, "custom"

    if-eqz v0, :cond_0

    .line 2028
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 2030
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2032
    :goto_0
    iget-object v0, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mVersion:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 2033
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_1

    .line 2035
    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2037
    :goto_1
    iget v0, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mPasswordMinimumNonLetters:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2038
    iget v0, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mPasswordMinimumLetters:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2039
    iget v0, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mPasswordMinimumNumeric:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2040
    iget v0, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mPasswordMinimumUpperCase:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2041
    iget v0, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mPasswordMinimumLowerCase:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2042
    iget v0, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mPasswordMinimumSymbols:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2043
    iget v0, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mPasswordQuality:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2044
    iget v0, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mMaximumTimeToLock:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2045
    iget v0, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mMaximumFailedPasswordsForWipe:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2046
    iget-boolean v0, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mManagedType:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2047
    iget-object v0, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mCustomBadgeIcon:Ljava/lang/String;

    const-string v1, ""

    if-eqz v0, :cond_2

    .line 2048
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_2

    .line 2050
    :cond_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2052
    :goto_2
    iget-object v0, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mCustomHomeScreenWallpaper:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 2053
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_3

    .line 2055
    :cond_3
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2058
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "writing to parcel mEC "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mEC:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "KnoxConfigurationType"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2059
    iget-boolean v0, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mEC:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2060
    iget-object v0, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mNameIcon:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 2061
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_4

    .line 2063
    :cond_4
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2065
    :goto_4
    iget-object v0, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mECName:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 2066
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_5

    .line 2068
    :cond_5
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2070
    :goto_5
    iget-object v0, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mECIcon:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 2071
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_6

    .line 2073
    :cond_6
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2075
    :goto_6
    iget-object v0, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mECBadge:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 2076
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_7

    .line 2078
    :cond_7
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2081
    :goto_7
    iget-object v0, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mCustomLockScreenWallpaper:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 2082
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    .line 2084
    :cond_8
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2086
    :goto_8
    iget-object v0, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mCustomStatusLabel:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 2087
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 2089
    :cond_9
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2091
    :goto_9
    iget-object v0, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mCustomStatusIcon:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 2092
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_a

    .line 2094
    :cond_a
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2096
    :goto_a
    iget-object v0, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mAppInstallationList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 2097
    iget-object v0, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mForbiddenStrings:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 2098
    iget-object v0, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mProtectedList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 2099
    iget-object v0, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mGoogleAppsList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 2100
    iget v0, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mMaximumCharacterOccurences:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2101
    iget v0, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mMaximumCharacterSequenceLength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2102
    iget v0, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mMaximumNumericSequenceLength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2103
    iget v0, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mPasswordMinimumLength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2104
    iget-object v0, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mPasswordPattern:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 2105
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_b

    .line 2107
    :cond_b
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2109
    :goto_b
    iget-boolean v0, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mSimplePasswordEnabled:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2110
    iget-boolean v0, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mMultifactorAuthEnabled:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2111
    iget-boolean v0, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mAllowMultiwindowMode:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2112
    iget-boolean v0, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mAllowTaskManager:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2113
    iget-boolean v0, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mIsBiometricAuthEnabled:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2114
    iget v0, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mBiometricAuthValue:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2115
    iget-boolean v0, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mAllowUSBDebugging:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2118
    iget v0, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mLayoutType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2119
    iget-boolean v0, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mAllowSwitch:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2120
    iget-boolean v0, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mIsDefaultConfigType:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2123
    iget-object v0, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mRCPDataSettings:Ljava/util/HashMap;

    invoke-direct {p0, p1, v0}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->serializeRCPSettings(Landroid/os/Parcel;Ljava/util/HashMap;)V

    .line 2124
    iget-object v0, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mAllowChangeDataSettings:Ljava/util/HashMap;

    invoke-direct {p0, p1, v0}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->serializeRCPSettings(Landroid/os/Parcel;Ljava/util/HashMap;)V

    .line 2125
    iget-object v0, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mRCPNotifSettings:Ljava/util/HashMap;

    invoke-direct {p0, p1, v0}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->serializeRCPSettings(Landroid/os/Parcel;Ljava/util/HashMap;)V

    .line 2128
    iget-object v0, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mAuthenticationConfig:Lcom/sec/enterprise/identity/AuthenticationConfig;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 2131
    iget p0, p0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->mKeyguardDisabledFeatures:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
