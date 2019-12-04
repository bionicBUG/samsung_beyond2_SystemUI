.class public final synthetic Lcom/android/systemui/util/-$$Lambda$DebugLogStore$3YbH6DL9sRF-GUirN23Yo3qy8jY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field private final synthetic f$0:Ljava/io/PrintWriter;

.field private final synthetic f$1:Ljava/text/DateFormat;


# direct methods
.method public synthetic constructor <init>(Ljava/io/PrintWriter;Ljava/text/DateFormat;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/util/-$$Lambda$DebugLogStore$3YbH6DL9sRF-GUirN23Yo3qy8jY;->f$0:Ljava/io/PrintWriter;

    iput-object p2, p0, Lcom/android/systemui/util/-$$Lambda$DebugLogStore$3YbH6DL9sRF-GUirN23Yo3qy8jY;->f$1:Ljava/text/DateFormat;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/util/-$$Lambda$DebugLogStore$3YbH6DL9sRF-GUirN23Yo3qy8jY;->f$0:Ljava/io/PrintWriter;

    iget-object p0, p0, Lcom/android/systemui/util/-$$Lambda$DebugLogStore$3YbH6DL9sRF-GUirN23Yo3qy8jY;->f$1:Ljava/text/DateFormat;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/util/List;

    invoke-static {v0, p0, p1, p2}, Lcom/android/systemui/util/DebugLogStore;->lambda$dump$1(Ljava/io/PrintWriter;Ljava/text/DateFormat;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method
