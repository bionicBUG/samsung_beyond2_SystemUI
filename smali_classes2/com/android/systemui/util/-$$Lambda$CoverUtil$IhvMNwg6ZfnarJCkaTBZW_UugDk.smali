.class public final synthetic Lcom/android/systemui/util/-$$Lambda$CoverUtil$IhvMNwg6ZfnarJCkaTBZW_UugDk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/samsung/android/cover/CoverState;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/cover/CoverState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/util/-$$Lambda$CoverUtil$IhvMNwg6ZfnarJCkaTBZW_UugDk;->f$0:Lcom/samsung/android/cover/CoverState;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/-$$Lambda$CoverUtil$IhvMNwg6ZfnarJCkaTBZW_UugDk;->f$0:Lcom/samsung/android/cover/CoverState;

    check-cast p1, Lcom/android/systemui/util/CoverUtil$CoverStateChangedListener;

    invoke-static {p0, p1}, Lcom/android/systemui/util/CoverUtil;->lambda$updateCoverState$0(Lcom/samsung/android/cover/CoverState;Lcom/android/systemui/util/CoverUtil$CoverStateChangedListener;)V

    return-void
.end method
