.class public final synthetic Lcom/android/systemui/statusbar/phone/store/-$$Lambda$NavBarStoreImpl$-ybeAkyBCjwLX1HLblWN8QdXbmo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic f$0:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/store/-$$Lambda$NavBarStoreImpl$-ybeAkyBCjwLX1HLblWN8QdXbmo;->f$0:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/store/-$$Lambda$NavBarStoreImpl$-ybeAkyBCjwLX1HLblWN8QdXbmo;->f$0:Ljava/util/Map;

    check-cast p1, Ljava/lang/reflect/Type;

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;->lambda$containNullDependency$20(Ljava/util/Map;Ljava/lang/reflect/Type;)Z

    move-result p0

    return p0
.end method
