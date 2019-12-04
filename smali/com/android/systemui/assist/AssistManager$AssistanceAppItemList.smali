.class public Lcom/android/systemui/assist/AssistManager$AssistanceAppItemList;
.super Ljava/lang/Object;
.source "AssistManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/assist/AssistManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AssistanceAppItemList"
.end annotation


# instance fields
.field private mAssistanceAppIcon:Landroid/graphics/drawable/Drawable;

.field private mAssistanceAppName:Ljava/lang/String;

.field private mAssistanceAppType:I

.field private mAssistanceComponent:Landroid/content/ComponentName;

.field private mAssistanceVoiceInteractionService:Landroid/service/voice/VoiceInteractionServiceInfo;


# direct methods
.method public constructor <init>(Landroid/content/ComponentName;Landroid/service/voice/VoiceInteractionServiceInfo;Landroid/graphics/drawable/Drawable;Ljava/lang/String;I)V
    .locals 0

    .line 720
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 721
    iput-object p1, p0, Lcom/android/systemui/assist/AssistManager$AssistanceAppItemList;->mAssistanceComponent:Landroid/content/ComponentName;

    .line 722
    iput-object p2, p0, Lcom/android/systemui/assist/AssistManager$AssistanceAppItemList;->mAssistanceVoiceInteractionService:Landroid/service/voice/VoiceInteractionServiceInfo;

    .line 723
    iput-object p3, p0, Lcom/android/systemui/assist/AssistManager$AssistanceAppItemList;->mAssistanceAppIcon:Landroid/graphics/drawable/Drawable;

    .line 724
    iput-object p4, p0, Lcom/android/systemui/assist/AssistManager$AssistanceAppItemList;->mAssistanceAppName:Ljava/lang/String;

    .line 725
    iput p5, p0, Lcom/android/systemui/assist/AssistManager$AssistanceAppItemList;->mAssistanceAppType:I

    return-void
.end method


# virtual methods
.method public getAssistanceAppIcon()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 741
    iget-object p0, p0, Lcom/android/systemui/assist/AssistManager$AssistanceAppItemList;->mAssistanceAppIcon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getAssistanceAppName()Ljava/lang/String;
    .locals 0

    .line 737
    iget-object p0, p0, Lcom/android/systemui/assist/AssistManager$AssistanceAppItemList;->mAssistanceAppName:Ljava/lang/String;

    return-object p0
.end method

.method public getAssistanceAppType()I
    .locals 0

    .line 745
    iget p0, p0, Lcom/android/systemui/assist/AssistManager$AssistanceAppItemList;->mAssistanceAppType:I

    return p0
.end method

.method public getAssistanceComponent()Landroid/content/ComponentName;
    .locals 0

    .line 729
    iget-object p0, p0, Lcom/android/systemui/assist/AssistManager$AssistanceAppItemList;->mAssistanceComponent:Landroid/content/ComponentName;

    return-object p0
.end method

.method public getAssistanceVoiceInteractionService()Landroid/service/voice/VoiceInteractionServiceInfo;
    .locals 0

    .line 733
    iget-object p0, p0, Lcom/android/systemui/assist/AssistManager$AssistanceAppItemList;->mAssistanceVoiceInteractionService:Landroid/service/voice/VoiceInteractionServiceInfo;

    return-object p0
.end method
