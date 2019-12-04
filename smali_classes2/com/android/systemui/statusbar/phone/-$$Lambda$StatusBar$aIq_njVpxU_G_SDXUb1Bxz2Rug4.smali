.class public final synthetic Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$aIq_njVpxU_G_SDXUb1Bxz2Rug4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private final synthetic f$1:Landroid/content/Intent;

.field private final synthetic f$2:I

.field private final synthetic f$3:Z

.field private final synthetic f$4:I

.field private final synthetic f$5:Lcom/android/systemui/plugins/ActivityStarter$Callback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/content/Intent;IZILcom/android/systemui/plugins/ActivityStarter$Callback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$aIq_njVpxU_G_SDXUb1Bxz2Rug4;->f$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$aIq_njVpxU_G_SDXUb1Bxz2Rug4;->f$1:Landroid/content/Intent;

    iput p3, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$aIq_njVpxU_G_SDXUb1Bxz2Rug4;->f$2:I

    iput-boolean p4, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$aIq_njVpxU_G_SDXUb1Bxz2Rug4;->f$3:Z

    iput p5, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$aIq_njVpxU_G_SDXUb1Bxz2Rug4;->f$4:I

    iput-object p6, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$aIq_njVpxU_G_SDXUb1Bxz2Rug4;->f$5:Lcom/android/systemui/plugins/ActivityStarter$Callback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$aIq_njVpxU_G_SDXUb1Bxz2Rug4;->f$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$aIq_njVpxU_G_SDXUb1Bxz2Rug4;->f$1:Landroid/content/Intent;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$aIq_njVpxU_G_SDXUb1Bxz2Rug4;->f$2:I

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$aIq_njVpxU_G_SDXUb1Bxz2Rug4;->f$3:Z

    iget v4, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$aIq_njVpxU_G_SDXUb1Bxz2Rug4;->f$4:I

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$aIq_njVpxU_G_SDXUb1Bxz2Rug4;->f$5:Lcom/android/systemui/plugins/ActivityStarter$Callback;

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/StatusBar;->lambda$startActivityDismissingKeyguard$20$StatusBar(Landroid/content/Intent;IZILcom/android/systemui/plugins/ActivityStarter$Callback;)V

    return-void
.end method
