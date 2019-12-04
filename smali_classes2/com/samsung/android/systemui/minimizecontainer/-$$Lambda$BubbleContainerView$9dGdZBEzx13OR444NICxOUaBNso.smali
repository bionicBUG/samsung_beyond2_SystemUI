.class public final synthetic Lcom/samsung/android/systemui/minimizecontainer/-$$Lambda$BubbleContainerView$9dGdZBEzx13OR444NICxOUaBNso;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;

.field private final synthetic f$1:F

.field private final synthetic f$2:F


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/-$$Lambda$BubbleContainerView$9dGdZBEzx13OR444NICxOUaBNso;->f$0:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;

    iput p2, p0, Lcom/samsung/android/systemui/minimizecontainer/-$$Lambda$BubbleContainerView$9dGdZBEzx13OR444NICxOUaBNso;->f$1:F

    iput p3, p0, Lcom/samsung/android/systemui/minimizecontainer/-$$Lambda$BubbleContainerView$9dGdZBEzx13OR444NICxOUaBNso;->f$2:F

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/-$$Lambda$BubbleContainerView$9dGdZBEzx13OR444NICxOUaBNso;->f$0:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;

    iget v1, p0, Lcom/samsung/android/systemui/minimizecontainer/-$$Lambda$BubbleContainerView$9dGdZBEzx13OR444NICxOUaBNso;->f$1:F

    iget p0, p0, Lcom/samsung/android/systemui/minimizecontainer/-$$Lambda$BubbleContainerView$9dGdZBEzx13OR444NICxOUaBNso;->f$2:F

    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->lambda$animateToShowPointerGroupView$2$BubbleContainerView(FF)V

    return-void
.end method
