.class Lcom/android/systemui/qs/customize/SecQSCustomizer$11;
.super Ljava/lang/Object;
.source "SecQSCustomizer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/customize/SecQSCustomizer;->showResetDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/customize/SecQSCustomizer;)V
    .locals 0

    .line 492
    iput-object p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$11;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 495
    iget-object p0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$11;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->access$2302(Lcom/android/systemui/qs/customize/SecQSCustomizer;Lcom/android/systemui/statusbar/phone/SystemUIDialog;)Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    return-void
.end method
