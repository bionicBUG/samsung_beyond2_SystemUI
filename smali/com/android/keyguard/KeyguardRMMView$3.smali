.class Lcom/android/keyguard/KeyguardRMMView$3;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardRMMView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardRMMView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardRMMView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardRMMView;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/android/keyguard/KeyguardRMMView$3;->this$0:Lcom/android/keyguard/KeyguardRMMView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onRemoteLockInfoChanged()V
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/android/keyguard/KeyguardRMMView$3;->this$0:Lcom/android/keyguard/KeyguardRMMView;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardRMMView;->access$200(Lcom/android/keyguard/KeyguardRMMView;)V

    return-void
.end method
