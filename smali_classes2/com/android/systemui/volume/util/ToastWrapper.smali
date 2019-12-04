.class public Lcom/android/systemui/volume/util/ToastWrapper;
.super Ljava/lang/Object;
.source "ToastWrapper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public show(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    const/4 p0, 0x0

    .line 8
    invoke-static {p1, p2, p0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method
