.class Lcom/android/systemui/appdock/view/AppDockSearchBarView$1;
.super Ljava/lang/Object;
.source "AppDockSearchBarView.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/appdock/view/AppDockSearchBarView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/appdock/view/AppDockSearchBarView;


# direct methods
.method constructor <init>(Lcom/android/systemui/appdock/view/AppDockSearchBarView;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/android/systemui/appdock/view/AppDockSearchBarView$1;->this$0:Lcom/android/systemui/appdock/view/AppDockSearchBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x0

    const/4 p3, 0x3

    if-ne p2, p3, :cond_0

    .line 58
    iget-object p2, p0, Lcom/android/systemui/appdock/view/AppDockSearchBarView$1;->this$0:Lcom/android/systemui/appdock/view/AppDockSearchBarView;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string p3, "input_method"

    .line 59
    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/inputmethod/InputMethodManager;

    .line 60
    iget-object p0, p0, Lcom/android/systemui/appdock/view/AppDockSearchBarView$1;->this$0:Lcom/android/systemui/appdock/view/AppDockSearchBarView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    invoke-virtual {p2, p0, p1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    const/4 p0, 0x1

    return p0

    :cond_0
    return p1
.end method
