.class public final synthetic Lcom/android/systemui/statusbar/phone/store/-$$Lambda$NavBarStoreImpl$oOnR5NYufSSEXPxFnm_xWg2IKo8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;

.field private final synthetic f$1:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/store/-$$Lambda$NavBarStoreImpl$oOnR5NYufSSEXPxFnm_xWg2IKo8;->f$0:Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/store/-$$Lambda$NavBarStoreImpl$oOnR5NYufSSEXPxFnm_xWg2IKo8;->f$1:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/store/-$$Lambda$NavBarStoreImpl$oOnR5NYufSSEXPxFnm_xWg2IKo8;->f$0:Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/store/-$$Lambda$NavBarStoreImpl$oOnR5NYufSSEXPxFnm_xWg2IKo8;->f$1:Ljava/util/Map;

    check-cast p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;

    invoke-virtual {v0, p0, p1}, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->lambda$handleEvent$18$NavBarStoreImpl(Ljava/util/Map;Lcom/android/systemui/statusbar/phone/bandaid/Band;)V

    return-void
.end method
