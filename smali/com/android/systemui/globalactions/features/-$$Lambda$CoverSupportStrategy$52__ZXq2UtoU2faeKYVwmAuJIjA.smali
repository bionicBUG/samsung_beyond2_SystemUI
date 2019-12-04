.class public final synthetic Lcom/android/systemui/globalactions/features/-$$Lambda$CoverSupportStrategy$52__ZXq2UtoU2faeKYVwmAuJIjA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/globalactions/features/CoverSupportStrategy;

.field private final synthetic f$1:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

.field private final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/globalactions/features/CoverSupportStrategy;Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/globalactions/features/-$$Lambda$CoverSupportStrategy$52__ZXq2UtoU2faeKYVwmAuJIjA;->f$0:Lcom/android/systemui/globalactions/features/CoverSupportStrategy;

    iput-object p2, p0, Lcom/android/systemui/globalactions/features/-$$Lambda$CoverSupportStrategy$52__ZXq2UtoU2faeKYVwmAuJIjA;->f$1:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    iput-object p3, p0, Lcom/android/systemui/globalactions/features/-$$Lambda$CoverSupportStrategy$52__ZXq2UtoU2faeKYVwmAuJIjA;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/globalactions/features/-$$Lambda$CoverSupportStrategy$52__ZXq2UtoU2faeKYVwmAuJIjA;->f$0:Lcom/android/systemui/globalactions/features/CoverSupportStrategy;

    iget-object v1, p0, Lcom/android/systemui/globalactions/features/-$$Lambda$CoverSupportStrategy$52__ZXq2UtoU2faeKYVwmAuJIjA;->f$1:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    iget-object p0, p0, Lcom/android/systemui/globalactions/features/-$$Lambda$CoverSupportStrategy$52__ZXq2UtoU2faeKYVwmAuJIjA;->f$2:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/globalactions/features/CoverSupportStrategy;->lambda$doActionBeforeSecureConfirm$1$CoverSupportStrategy(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;Ljava/lang/String;)V

    return-void
.end method
