.class public final synthetic Lcom/android/systemui/qs/-$$Lambda$QSTileHost$gTC6bfAm3OdBvkR8k1Njj9Xl7vE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic f$0:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/-$$Lambda$QSTileHost$gTC6bfAm3OdBvkR8k1Njj9Xl7vE;->f$0:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/-$$Lambda$QSTileHost$gTC6bfAm3OdBvkR8k1Njj9Xl7vE;->f$0:Ljava/util/List;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {p0, p1}, Lcom/android/systemui/qs/QSTileHost;->lambda$refreshTileList$8(Ljava/util/List;Ljava/util/Map$Entry;)Z

    move-result p0

    return p0
.end method
