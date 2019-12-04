.class public final synthetic Lcom/samsung/android/systemui/minimizecontainer/-$$Lambda$BubbleContainerViewController$c-Cb7UtCBMKbgtMPJRhhf9lICKU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;

.field private final synthetic f$1:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/-$$Lambda$BubbleContainerViewController$c-Cb7UtCBMKbgtMPJRhhf9lICKU;->f$0:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;

    iput-object p2, p0, Lcom/samsung/android/systemui/minimizecontainer/-$$Lambda$BubbleContainerViewController$c-Cb7UtCBMKbgtMPJRhhf9lICKU;->f$1:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/-$$Lambda$BubbleContainerViewController$c-Cb7UtCBMKbgtMPJRhhf9lICKU;->f$0:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;

    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/-$$Lambda$BubbleContainerViewController$c-Cb7UtCBMKbgtMPJRhhf9lICKU;->f$1:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;

    invoke-virtual {v0, p0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->lambda$throwTrashAway$2$BubbleContainerViewController(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;)V

    return-void
.end method
