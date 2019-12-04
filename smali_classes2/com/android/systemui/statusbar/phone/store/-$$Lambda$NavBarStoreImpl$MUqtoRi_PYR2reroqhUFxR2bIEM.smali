.class public final synthetic Lcom/android/systemui/statusbar/phone/store/-$$Lambda$NavBarStoreImpl$MUqtoRi_PYR2reroqhUFxR2bIEM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;

.field private final synthetic f$1:Ljava/lang/Object;

.field private final synthetic f$2:Lcom/android/systemui/statusbar/phone/store/EventType;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;Ljava/lang/Object;Lcom/android/systemui/statusbar/phone/store/EventType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/store/-$$Lambda$NavBarStoreImpl$MUqtoRi_PYR2reroqhUFxR2bIEM;->f$0:Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/store/-$$Lambda$NavBarStoreImpl$MUqtoRi_PYR2reroqhUFxR2bIEM;->f$1:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/store/-$$Lambda$NavBarStoreImpl$MUqtoRi_PYR2reroqhUFxR2bIEM;->f$2:Lcom/android/systemui/statusbar/phone/store/EventType;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/store/-$$Lambda$NavBarStoreImpl$MUqtoRi_PYR2reroqhUFxR2bIEM;->f$0:Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/store/-$$Lambda$NavBarStoreImpl$MUqtoRi_PYR2reroqhUFxR2bIEM;->f$1:Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/store/-$$Lambda$NavBarStoreImpl$MUqtoRi_PYR2reroqhUFxR2bIEM;->f$2:Lcom/android/systemui/statusbar/phone/store/EventType;

    check-cast p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;

    invoke-virtual {v0, v1, p0, p1}, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->lambda$handleEvent$16$NavBarStoreImpl(Ljava/lang/Object;Lcom/android/systemui/statusbar/phone/store/EventType;Lcom/android/systemui/statusbar/phone/bandaid/Band;)Z

    move-result p0

    return p0
.end method
