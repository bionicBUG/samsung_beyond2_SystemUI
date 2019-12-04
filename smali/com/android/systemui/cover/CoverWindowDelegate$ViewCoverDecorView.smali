.class Lcom/android/systemui/cover/CoverWindowDelegate$ViewCoverDecorView;
.super Landroid/widget/FrameLayout;
.source "CoverWindowDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/cover/CoverWindowDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewCoverDecorView"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/cover/CoverWindowDelegate;


# direct methods
.method public constructor <init>(Lcom/android/systemui/cover/CoverWindowDelegate;Landroid/content/Context;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/android/systemui/cover/CoverWindowDelegate$ViewCoverDecorView;->this$0:Lcom/android/systemui/cover/CoverWindowDelegate;

    .line 95
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 96
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string/jumbo p2, "window"

    invoke-virtual {p0, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    invoke-static {p1, p0}, Lcom/android/systemui/cover/CoverWindowDelegate;->access$002(Lcom/android/systemui/cover/CoverWindowDelegate;Landroid/view/WindowManager;)Landroid/view/WindowManager;

    return-void
.end method
