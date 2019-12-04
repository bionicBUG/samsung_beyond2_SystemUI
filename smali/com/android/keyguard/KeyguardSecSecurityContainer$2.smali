.class Lcom/android/keyguard/KeyguardSecSecurityContainer$2;
.super Ljava/lang/Object;
.source "KeyguardSecSecurityContainer.java"

# interfaces
.implements Lcom/android/systemui/keyguard/DisplayLifecycle$Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardSecSecurityContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardSecSecurityContainer;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardSecSecurityContainer;)V
    .locals 0

    .line 921
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer$2;->this$0:Lcom/android/keyguard/KeyguardSecSecurityContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFolderStateChanged(Z)V
    .locals 0

    .line 925
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer$2;->this$0:Lcom/android/keyguard/KeyguardSecSecurityContainer;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardSecSecurityContainer;->access$600(Lcom/android/keyguard/KeyguardSecSecurityContainer;)V

    return-void
.end method
