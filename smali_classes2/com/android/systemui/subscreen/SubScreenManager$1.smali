.class Lcom/android/systemui/subscreen/SubScreenManager$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "SubScreenManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/subscreen/SubScreenManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/subscreen/SubScreenManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/subscreen/SubScreenManager;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/android/systemui/subscreen/SubScreenManager$1;->this$0:Lcom/android/systemui/subscreen/SubScreenManager;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserSwitchComplete(I)V
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenManager$1;->this$0:Lcom/android/systemui/subscreen/SubScreenManager;

    invoke-static {p0}, Lcom/android/systemui/subscreen/SubScreenManager;->access$000(Lcom/android/systemui/subscreen/SubScreenManager;)V

    return-void
.end method
