.class final Lcom/android/systemui/keyguard/KeyguardLog;
.super Ljava/lang/Object;
.source "KeyguardLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/keyguard/KeyguardLog$KeyguardDumpable;
    }
.end annotation


# static fields
.field private static final sInstance:Lcom/android/systemui/keyguard/KeyguardLog$KeyguardDumpable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 18
    new-instance v0, Lcom/android/systemui/keyguard/KeyguardLog$KeyguardDumpable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/keyguard/KeyguardLog$KeyguardDumpable;-><init>(Lcom/android/systemui/keyguard/KeyguardLog$1;)V

    sput-object v0, Lcom/android/systemui/keyguard/KeyguardLog;->sInstance:Lcom/android/systemui/keyguard/KeyguardLog$KeyguardDumpable;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    .line 29
    sget-object v0, Lcom/android/systemui/keyguard/KeyguardLog;->sInstance:Lcom/android/systemui/keyguard/KeyguardLog$KeyguardDumpable;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/systemui/keyguard/KeyguardLog$KeyguardDumpable;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method static log(II)V
    .locals 7

    .line 37
    sget-object v0, Lcom/android/systemui/keyguard/KeyguardLog;->sInstance:Lcom/android/systemui/keyguard/KeyguardLog$KeyguardDumpable;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, -0x1

    move v1, p0

    move v5, p1

    invoke-static/range {v0 .. v6}, Lcom/android/systemui/keyguard/KeyguardLog$KeyguardDumpable;->access$300(Lcom/android/systemui/keyguard/KeyguardLog$KeyguardDumpable;IZZZII)V

    return-void
.end method

.method static log(III)V
    .locals 7

    .line 41
    sget-object v0, Lcom/android/systemui/keyguard/KeyguardLog;->sInstance:Lcom/android/systemui/keyguard/KeyguardLog$KeyguardDumpable;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v1, p0

    move v5, p1

    move v6, p2

    invoke-static/range {v0 .. v6}, Lcom/android/systemui/keyguard/KeyguardLog$KeyguardDumpable;->access$300(Lcom/android/systemui/keyguard/KeyguardLog$KeyguardDumpable;IZZZII)V

    return-void
.end method

.method static log(IZ)V
    .locals 7

    .line 45
    sget-object v0, Lcom/android/systemui/keyguard/KeyguardLog;->sInstance:Lcom/android/systemui/keyguard/KeyguardLog$KeyguardDumpable;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    move v1, p0

    move v2, p1

    invoke-static/range {v0 .. v6}, Lcom/android/systemui/keyguard/KeyguardLog$KeyguardDumpable;->access$300(Lcom/android/systemui/keyguard/KeyguardLog$KeyguardDumpable;IZZZII)V

    return-void
.end method

.method static log(IZZZ)V
    .locals 7

    .line 49
    sget-object v0, Lcom/android/systemui/keyguard/KeyguardLog;->sInstance:Lcom/android/systemui/keyguard/KeyguardLog$KeyguardDumpable;

    const/4 v5, -0x1

    const/4 v6, -0x1

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-static/range {v0 .. v6}, Lcom/android/systemui/keyguard/KeyguardLog$KeyguardDumpable;->access$300(Lcom/android/systemui/keyguard/KeyguardLog$KeyguardDumpable;IZZZII)V

    return-void
.end method

.method static log(Ljava/lang/String;CLjava/lang/String;)V
    .locals 2

    .line 25
    sget-object v0, Lcom/android/systemui/keyguard/KeyguardLog;->sInstance:Lcom/android/systemui/keyguard/KeyguardLog$KeyguardDumpable;

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, p2, v1}, Lcom/android/systemui/keyguard/KeyguardLog$KeyguardDumpable;->access$100(Lcom/android/systemui/keyguard/KeyguardLog$KeyguardDumpable;Ljava/lang/String;CLjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method static log(Ljava/lang/String;CLjava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 21
    sget-object v0, Lcom/android/systemui/keyguard/KeyguardLog;->sInstance:Lcom/android/systemui/keyguard/KeyguardLog$KeyguardDumpable;

    invoke-static {v0, p0, p1, p2, p3}, Lcom/android/systemui/keyguard/KeyguardLog$KeyguardDumpable;->access$100(Lcom/android/systemui/keyguard/KeyguardLog$KeyguardDumpable;Ljava/lang/String;CLjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
