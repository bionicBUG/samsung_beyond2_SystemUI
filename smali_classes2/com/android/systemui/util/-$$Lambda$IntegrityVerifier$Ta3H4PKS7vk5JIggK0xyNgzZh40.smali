.class public final synthetic Lcom/android/systemui/util/-$$Lambda$IntegrityVerifier$Ta3H4PKS7vk5JIggK0xyNgzZh40;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/util/IntegrityVerifier;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/util/IntegrityVerifier;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/util/-$$Lambda$IntegrityVerifier$Ta3H4PKS7vk5JIggK0xyNgzZh40;->f$0:Lcom/android/systemui/util/IntegrityVerifier;

    iput p2, p0, Lcom/android/systemui/util/-$$Lambda$IntegrityVerifier$Ta3H4PKS7vk5JIggK0xyNgzZh40;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/util/-$$Lambda$IntegrityVerifier$Ta3H4PKS7vk5JIggK0xyNgzZh40;->f$0:Lcom/android/systemui/util/IntegrityVerifier;

    iget p0, p0, Lcom/android/systemui/util/-$$Lambda$IntegrityVerifier$Ta3H4PKS7vk5JIggK0xyNgzZh40;->f$1:I

    invoke-virtual {v0, p0}, Lcom/android/systemui/util/IntegrityVerifier;->lambda$onStateChanged$0$IntegrityVerifier(I)V

    return-void
.end method
