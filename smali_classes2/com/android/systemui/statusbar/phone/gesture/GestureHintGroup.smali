.class public Lcom/android/systemui/statusbar/phone/gesture/GestureHintGroup;
.super Ljava/lang/Object;
.source "GestureHintGroup.java"


# instance fields
.field private mHintGroup:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/phone/ButtonDispatcher;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/util/SparseArray;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/android/systemui/statusbar/phone/ButtonDispatcher;",
            ">;)V"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/gesture/GestureHintGroup;->mHintGroup:Ljava/util/ArrayList;

    .line 19
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/gesture/GestureHintGroup;->mHintGroup:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 20
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/gesture/GestureHintGroup;->mHintGroup:Ljava/util/ArrayList;

    sget v1, Lcom/android/systemui/R$id;->hint_left:I

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/gesture/GestureHintGroup;->mHintGroup:Ljava/util/ArrayList;

    sget v1, Lcom/android/systemui/R$id;->hint_center:I

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/gesture/GestureHintGroup;->mHintGroup:Ljava/util/ArrayList;

    sget v0, Lcom/android/systemui/R$id;->hint_right:I

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public getHintView()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;
    .locals 1

    const/4 v0, 0x1

    .line 26
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/gesture/GestureHintGroup;->getHintView(I)Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object p0

    return-object p0
.end method

.method public getHintView(I)Lcom/android/systemui/statusbar/phone/ButtonDispatcher;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/gesture/GestureHintGroup;->mHintGroup:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    return-object p0
.end method

.method public setCurrentRotation(I)V
    .locals 1

    .line 34
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/gesture/GestureHintGroup;->mHintGroup:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    .line 35
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setCurrentRotation(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setIconResourceMapper(Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;)V
    .locals 1

    .line 40
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/gesture/GestureHintGroup;->mHintGroup:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    .line 41
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/gesture/NavigationHintHandle;

    if-eqz v0, :cond_0

    .line 43
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/gesture/NavigationHintHandle;->setIconResourceMapper(Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;)V

    goto :goto_0

    :cond_1
    return-void
.end method
