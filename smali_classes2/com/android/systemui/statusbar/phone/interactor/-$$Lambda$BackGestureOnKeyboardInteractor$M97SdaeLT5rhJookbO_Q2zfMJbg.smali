.class public final synthetic Lcom/android/systemui/statusbar/phone/interactor/-$$Lambda$BackGestureOnKeyboardInteractor$M97SdaeLT5rhJookbO_Q2zfMJbg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;


# instance fields
.field private final synthetic f$0:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/interactor/-$$Lambda$BackGestureOnKeyboardInteractor$M97SdaeLT5rhJookbO_Q2zfMJbg;->f$0:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final onChanged(Landroid/net/Uri;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/interactor/-$$Lambda$BackGestureOnKeyboardInteractor$M97SdaeLT5rhJookbO_Q2zfMJbg;->f$0:Ljava/util/function/Consumer;

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/phone/interactor/BackGestureOnKeyboardInteractor;->lambda$addCallback$0(Ljava/util/function/Consumer;Landroid/net/Uri;)V

    return-void
.end method
