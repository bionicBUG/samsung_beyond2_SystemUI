.class public final synthetic Lcom/android/systemui/statusbar/phone/interactor/-$$Lambda$UseThemeDefaultInteractor$92RDk4El_VPRF7oycrMNHlPZf1E;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;


# instance fields
.field private final synthetic f$0:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/interactor/-$$Lambda$UseThemeDefaultInteractor$92RDk4El_VPRF7oycrMNHlPZf1E;->f$0:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final onChanged(Landroid/net/Uri;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/interactor/-$$Lambda$UseThemeDefaultInteractor$92RDk4El_VPRF7oycrMNHlPZf1E;->f$0:Ljava/lang/Runnable;

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/phone/interactor/UseThemeDefaultInteractor;->lambda$addCallback$0(Ljava/lang/Runnable;Landroid/net/Uri;)V

    return-void
.end method
