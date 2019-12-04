.class public final Lcom/android/systemui/keyguard/Log;
.super Ljava/lang/Object;
.source "Log.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 14
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x44

    .line 15
    invoke-static {p0, v0, p1}, Lcom/android/systemui/keyguard/KeyguardLog;->log(Ljava/lang/String;CLjava/lang/String;)V

    return-void
.end method

.method public static varargs d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 43
    invoke-static {p1, p2}, Lcom/android/systemui/util/LogUtil;->getMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 19
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x45

    .line 20
    invoke-static {p0, v0, p1}, Lcom/android/systemui/keyguard/KeyguardLog;->log(Ljava/lang/String;CLjava/lang/String;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 24
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v0, 0x45

    .line 25
    invoke-static {p0, v0, p1, p2}, Lcom/android/systemui/keyguard/KeyguardLog;->log(Ljava/lang/String;CLjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 9
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x49

    .line 10
    invoke-static {p0, v0, p1}, Lcom/android/systemui/keyguard/KeyguardLog;->log(Ljava/lang/String;CLjava/lang/String;)V

    return-void
.end method

.method public static varargs i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 39
    invoke-static {p1, p2}, Lcom/android/systemui/util/LogUtil;->getMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/systemui/keyguard/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static t(II)V
    .locals 0

    .line 47
    invoke-static {p0, p1}, Lcom/android/systemui/keyguard/KeyguardLog;->log(II)V

    return-void
.end method

.method static t(III)V
    .locals 0

    .line 51
    invoke-static {p0, p1, p2}, Lcom/android/systemui/keyguard/KeyguardLog;->log(III)V

    return-void
.end method

.method static t(IZ)V
    .locals 0

    .line 55
    invoke-static {p0, p1}, Lcom/android/systemui/keyguard/KeyguardLog;->log(IZ)V

    return-void
.end method

.method static t(IZZZ)V
    .locals 0

    .line 59
    invoke-static {p0, p1, p2, p3}, Lcom/android/systemui/keyguard/KeyguardLog;->log(IZZZ)V

    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 29
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x56

    .line 30
    invoke-static {p0, v0, p1}, Lcom/android/systemui/keyguard/KeyguardLog;->log(Ljava/lang/String;CLjava/lang/String;)V

    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 34
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x57

    .line 35
    invoke-static {p0, v0, p1}, Lcom/android/systemui/keyguard/KeyguardLog;->log(Ljava/lang/String;CLjava/lang/String;)V

    return-void
.end method
