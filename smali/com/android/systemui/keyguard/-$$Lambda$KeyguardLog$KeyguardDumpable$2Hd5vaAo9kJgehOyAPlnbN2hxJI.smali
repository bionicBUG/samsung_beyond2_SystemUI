.class public final synthetic Lcom/android/systemui/keyguard/-$$Lambda$KeyguardLog$KeyguardDumpable$2Hd5vaAo9kJgehOyAPlnbN2hxJI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/LongConsumer;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/keyguard/KeyguardLog$KeyguardDumpable;

.field private final synthetic f$1:Ljava/io/PrintWriter;

.field private final synthetic f$2:Ljava/lang/StringBuilder;

.field private final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/keyguard/KeyguardLog$KeyguardDumpable;Ljava/io/PrintWriter;Ljava/lang/StringBuilder;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/keyguard/-$$Lambda$KeyguardLog$KeyguardDumpable$2Hd5vaAo9kJgehOyAPlnbN2hxJI;->f$0:Lcom/android/systemui/keyguard/KeyguardLog$KeyguardDumpable;

    iput-object p2, p0, Lcom/android/systemui/keyguard/-$$Lambda$KeyguardLog$KeyguardDumpable$2Hd5vaAo9kJgehOyAPlnbN2hxJI;->f$1:Ljava/io/PrintWriter;

    iput-object p3, p0, Lcom/android/systemui/keyguard/-$$Lambda$KeyguardLog$KeyguardDumpable$2Hd5vaAo9kJgehOyAPlnbN2hxJI;->f$2:Ljava/lang/StringBuilder;

    iput p4, p0, Lcom/android/systemui/keyguard/-$$Lambda$KeyguardLog$KeyguardDumpable$2Hd5vaAo9kJgehOyAPlnbN2hxJI;->f$3:I

    return-void
.end method


# virtual methods
.method public final accept(J)V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/keyguard/-$$Lambda$KeyguardLog$KeyguardDumpable$2Hd5vaAo9kJgehOyAPlnbN2hxJI;->f$0:Lcom/android/systemui/keyguard/KeyguardLog$KeyguardDumpable;

    iget-object v1, p0, Lcom/android/systemui/keyguard/-$$Lambda$KeyguardLog$KeyguardDumpable$2Hd5vaAo9kJgehOyAPlnbN2hxJI;->f$1:Ljava/io/PrintWriter;

    iget-object v2, p0, Lcom/android/systemui/keyguard/-$$Lambda$KeyguardLog$KeyguardDumpable$2Hd5vaAo9kJgehOyAPlnbN2hxJI;->f$2:Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/keyguard/-$$Lambda$KeyguardLog$KeyguardDumpable$2Hd5vaAo9kJgehOyAPlnbN2hxJI;->f$3:I

    move-wide v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/keyguard/KeyguardLog$KeyguardDumpable;->lambda$dump$0$KeyguardLog$KeyguardDumpable(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;IJ)V

    return-void
.end method
