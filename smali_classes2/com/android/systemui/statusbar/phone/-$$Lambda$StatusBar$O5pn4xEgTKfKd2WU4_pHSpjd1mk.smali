.class public final synthetic Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$O5pn4xEgTKfKd2WU4_pHSpjd1mk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private final synthetic f$1:[Z

.field private final synthetic f$2:Landroid/view/KeyEvent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;[ZLandroid/view/KeyEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$O5pn4xEgTKfKd2WU4_pHSpjd1mk;->f$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$O5pn4xEgTKfKd2WU4_pHSpjd1mk;->f$1:[Z

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$O5pn4xEgTKfKd2WU4_pHSpjd1mk;->f$2:Landroid/view/KeyEvent;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$O5pn4xEgTKfKd2WU4_pHSpjd1mk;->f$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$O5pn4xEgTKfKd2WU4_pHSpjd1mk;->f$1:[Z

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$O5pn4xEgTKfKd2WU4_pHSpjd1mk;->f$2:Landroid/view/KeyEvent;

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, v1, p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->lambda$interceptRestKey$32$StatusBar([ZLandroid/view/KeyEvent;Landroid/view/inputmethod/InputMethodManager;)V

    return-void
.end method
