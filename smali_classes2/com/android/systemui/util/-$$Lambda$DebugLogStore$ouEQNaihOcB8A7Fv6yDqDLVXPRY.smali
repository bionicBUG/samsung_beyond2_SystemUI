.class public final synthetic Lcom/android/systemui/util/-$$Lambda$DebugLogStore$ouEQNaihOcB8A7Fv6yDqDLVXPRY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Ljava/io/PrintWriter;

.field private final synthetic f$1:Ljava/text/DateFormat;

.field private final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/io/PrintWriter;Ljava/text/DateFormat;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/util/-$$Lambda$DebugLogStore$ouEQNaihOcB8A7Fv6yDqDLVXPRY;->f$0:Ljava/io/PrintWriter;

    iput-object p2, p0, Lcom/android/systemui/util/-$$Lambda$DebugLogStore$ouEQNaihOcB8A7Fv6yDqDLVXPRY;->f$1:Ljava/text/DateFormat;

    iput-object p3, p0, Lcom/android/systemui/util/-$$Lambda$DebugLogStore$ouEQNaihOcB8A7Fv6yDqDLVXPRY;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/-$$Lambda$DebugLogStore$ouEQNaihOcB8A7Fv6yDqDLVXPRY;->f$0:Ljava/io/PrintWriter;

    iget-object v1, p0, Lcom/android/systemui/util/-$$Lambda$DebugLogStore$ouEQNaihOcB8A7Fv6yDqDLVXPRY;->f$1:Ljava/text/DateFormat;

    iget-object p0, p0, Lcom/android/systemui/util/-$$Lambda$DebugLogStore$ouEQNaihOcB8A7Fv6yDqDLVXPRY;->f$2:Ljava/lang/String;

    check-cast p1, Lcom/android/systemui/util/DebugLogStore$DebugLog;

    invoke-static {v0, v1, p0, p1}, Lcom/android/systemui/util/DebugLogStore;->lambda$dump$0(Ljava/io/PrintWriter;Ljava/text/DateFormat;Ljava/lang/String;Lcom/android/systemui/util/DebugLogStore$DebugLog;)V

    return-void
.end method
