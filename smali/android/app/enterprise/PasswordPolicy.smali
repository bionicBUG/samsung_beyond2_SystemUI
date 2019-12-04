.class public Landroid/app/enterprise/PasswordPolicy;
.super Ljava/lang/Object;
.source "PasswordPolicy.java"


# static fields
.field public static final enforcePwdExceptions:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 20

    const-string v0, "com.android.settings.SubSettings"

    const-string v1, "com.android.settings.ChooseLockPassword"

    const-string v2, "com.android.settings.ChooseLockPattern"

    const-string v3, "com.google.android.gsf.update.SystemUpdateInstallDialog"

    const-string v4, "com.google.android.gsf.update.SystemUpdateDownloadDialog"

    const-string v5, "com.android.phone.EmergencyDialer"

    const-string v6, "com.android.phone.OutgoingCallBroadcaster"

    const-string v7, "com.android.phone.EmergencyOutgoingCallBroadcaster"

    const-string v8, "com.android.phone.InCallScreen"

    const-string v9, "com.android.internal.policy.impl.LockScreen"

    const-string v10, "com.android.internal.policy.impl.PatternUnlockScreen"

    const-string v11, "com.android.internal.policy.impl.PasswordUnlockScreen"

    const-string v12, "com.android.incallui.InCallActivity"

    const-string v13, "com.android.incallui.call.InCallActivity"

    const-string v14, "com.android.server.telecom.EmergencyCallActivity"

    const-string v15, "com.samsung.android.app.telephonyui.emergencydialer.view.EmergencyDialerActivity"

    const-string v16, "com.android.incallui.SecInCallActivity"

    const-string v17, "com.samsung.phone.EmergencyDialer"

    const-string v18, "com.skt.prod.phone.activities.phone.OutgoingCallBroadcaster"

    const-string v19, "com.skt.prod.phone.activities.phone.TPhoneActivity"

    .line 154
    filled-new-array/range {v0 .. v19}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/app/enterprise/PasswordPolicy;->enforcePwdExceptions:[Ljava/lang/String;

    return-void
.end method
