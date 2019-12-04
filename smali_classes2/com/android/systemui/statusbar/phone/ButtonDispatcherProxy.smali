.class public Lcom/android/systemui/statusbar/phone/ButtonDispatcherProxy;
.super Ljava/lang/Object;
.source "ButtonDispatcherProxy.java"

# interfaces
.implements Lcom/samsung/systemui/splugins/navigationbar/ButtonDispatcherProxyBase;


# instance fields
.field private mButtonDispatchers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/systemui/statusbar/phone/ButtonDispatcher;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/SparseArray<",
            "Lcom/android/systemui/statusbar/phone/ButtonDispatcher;",
            ">;)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcherProxy;->mContext:Landroid/content/Context;

    .line 18
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcherProxy;->mButtonDispatchers:Landroid/util/SparseArray;

    return-void
.end method

.method private getButton(I)Lcom/android/systemui/statusbar/phone/ButtonDispatcher;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcherProxy;->mButtonDispatchers:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    return-object p0
.end method


# virtual methods
.method public addButton(I)V
    .locals 1

    .line 27
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcherProxy;->mButtonDispatchers:Landroid/util/SparseArray;

    new-instance v0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    invoke-direct {v0, p1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public setButtonImage(ILandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 32
    invoke-static {p2, p3}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->create(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object p2

    .line 33
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcherProxy;->getButton(I)Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 34
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcherProxy;->getButton(I)Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setImageDrawable(Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;)V

    .line 35
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcherProxy;->getButton(I)Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public setButtonOnClickListener(ILandroid/view/View$OnClickListener;)V
    .locals 1

    .line 41
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcherProxy;->getButton(I)Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 42
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcherProxy;->getButton(I)Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public setButtonOnLongClickListener(ILandroid/view/View$OnLongClickListener;)V
    .locals 1

    .line 48
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcherProxy;->getButton(I)Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 49
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcherProxy;->getButton(I)Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_0
    return-void
.end method
