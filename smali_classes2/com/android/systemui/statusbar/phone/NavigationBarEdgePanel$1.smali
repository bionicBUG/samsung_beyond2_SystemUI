.class Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel$1;
.super Ljava/lang/Object;
.source "NavigationBarEdgePanel.java"

# interfaces
.implements Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;)V
    .locals 0

    .line 206
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel$1;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    .line 210
    invoke-virtual {p1, p0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->removeEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)V

    if-nez p2, :cond_0

    .line 212
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel$1;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
