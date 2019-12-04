.class Lcom/android/systemui/indexsearch/SystemUIIndexMediator$1;
.super Ljava/lang/Object;
.source "SystemUIIndexMediator.java"

# interfaces
.implements Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/indexsearch/SystemUIIndexMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/indexsearch/SystemUIIndexMediator;


# direct methods
.method constructor <init>(Lcom/android/systemui/indexsearch/SystemUIIndexMediator;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/android/systemui/indexsearch/SystemUIIndexMediator$1;->this$0:Lcom/android/systemui/indexsearch/SystemUIIndexMediator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScreenTurningOff()V
    .locals 4

    .line 125
    iget-object v0, p0, Lcom/android/systemui/indexsearch/SystemUIIndexMediator$1;->this$0:Lcom/android/systemui/indexsearch/SystemUIIndexMediator;

    iget-object v0, v0, Lcom/android/systemui/indexsearch/SystemUIIndexMediator;->mTileSearchResults:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/indexsearch/Searchable;

    .line 126
    invoke-interface {v1}, Lcom/android/systemui/indexsearch/Searchable;->getTileSpecForAction()Ljava/lang/String;

    move-result-object v1

    .line 127
    iget-object v2, p0, Lcom/android/systemui/indexsearch/SystemUIIndexMediator$1;->this$0:Lcom/android/systemui/indexsearch/SystemUIIndexMediator;

    invoke-virtual {v2, v1}, Lcom/android/systemui/indexsearch/SystemUIIndexMediator;->isInQuickQsPanel(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 128
    iget-object v2, p0, Lcom/android/systemui/indexsearch/SystemUIIndexMediator$1;->this$0:Lcom/android/systemui/indexsearch/SystemUIIndexMediator;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Lcom/android/systemui/indexsearch/SystemUIIndexMediator;->setInstantTileListening(ZLjava/lang/String;)V

    goto :goto_0

    .line 131
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/indexsearch/SystemUIIndexMediator$1;->this$0:Lcom/android/systemui/indexsearch/SystemUIIndexMediator;

    iget-object p0, p0, Lcom/android/systemui/indexsearch/SystemUIIndexMediator;->mTileSearchResults:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method
