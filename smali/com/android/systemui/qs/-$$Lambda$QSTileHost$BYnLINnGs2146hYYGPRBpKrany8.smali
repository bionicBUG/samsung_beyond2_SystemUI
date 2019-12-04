.class public final synthetic Lcom/android/systemui/qs/-$$Lambda$QSTileHost$BYnLINnGs2146hYYGPRBpKrany8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/qs/QSTileHost;

.field private final synthetic f$1:Ljava/util/LinkedHashMap;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/QSTileHost;Ljava/util/LinkedHashMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/-$$Lambda$QSTileHost$BYnLINnGs2146hYYGPRBpKrany8;->f$0:Lcom/android/systemui/qs/QSTileHost;

    iput-object p2, p0, Lcom/android/systemui/qs/-$$Lambda$QSTileHost$BYnLINnGs2146hYYGPRBpKrany8;->f$1:Ljava/util/LinkedHashMap;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/-$$Lambda$QSTileHost$BYnLINnGs2146hYYGPRBpKrany8;->f$0:Lcom/android/systemui/qs/QSTileHost;

    iget-object p0, p0, Lcom/android/systemui/qs/-$$Lambda$QSTileHost$BYnLINnGs2146hYYGPRBpKrany8;->f$1:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/QSTileHost;->lambda$sendSATileList$5$QSTileHost(Ljava/util/LinkedHashMap;)V

    return-void
.end method
