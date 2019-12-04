.class public Lcom/android/systemui/pluginlock/model/DynamicLockData$IndicationData$HelpTextData;
.super Ljava/lang/Object;
.source "DynamicLockData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/pluginlock/model/DynamicLockData$IndicationData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HelpTextData"
.end annotation


# instance fields
.field mBottom:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "bottom"
    .end annotation
.end field

.field mHelpTextVisibility:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "visibility"
    .end annotation
.end field

.field mMarginBottom:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "margin_bottom"
    .end annotation
.end field

.field mTop:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "top"
    .end annotation
.end field

.field final synthetic this$1:Lcom/android/systemui/pluginlock/model/DynamicLockData$IndicationData;


# direct methods
.method public constructor <init>(Lcom/android/systemui/pluginlock/model/DynamicLockData$IndicationData;)V
    .locals 0

    .line 871
    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$IndicationData$HelpTextData;->this$1:Lcom/android/systemui/pluginlock/model/DynamicLockData$IndicationData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 873
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$IndicationData$HelpTextData;->mHelpTextVisibility:Ljava/lang/Integer;

    const/4 p1, -0x1

    .line 875
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$IndicationData$HelpTextData;->mTop:Ljava/lang/Integer;

    .line 877
    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$IndicationData$HelpTextData;->mBottom:Ljava/lang/Integer;

    .line 879
    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$IndicationData$HelpTextData;->mMarginBottom:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method protected clone()Lcom/android/systemui/pluginlock/model/DynamicLockData$IndicationData$HelpTextData;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 915
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$IndicationData$HelpTextData;

    return-object p0
.end method

.method protected bridge synthetic clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 871
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/DynamicLockData$IndicationData$HelpTextData;->clone()Lcom/android/systemui/pluginlock/model/DynamicLockData$IndicationData$HelpTextData;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 920
    instance-of v0, p1, Lcom/android/systemui/pluginlock/model/DynamicLockData$IndicationData$HelpTextData;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 921
    check-cast p1, Lcom/android/systemui/pluginlock/model/DynamicLockData$IndicationData$HelpTextData;

    .line 922
    iget-object v0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$IndicationData$HelpTextData;->mHelpTextVisibility:Ljava/lang/Integer;

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/android/systemui/pluginlock/model/DynamicLockData$IndicationData$HelpTextData;->mHelpTextVisibility:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$IndicationData$HelpTextData;->mHelpTextVisibility:Ljava/lang/Integer;

    if-eqz v0, :cond_8

    iget-object v2, p1, Lcom/android/systemui/pluginlock/model/DynamicLockData$IndicationData$HelpTextData;->mHelpTextVisibility:Ljava/lang/Integer;

    .line 923
    invoke-virtual {v0, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$IndicationData$HelpTextData;->mTop:Ljava/lang/Integer;

    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/android/systemui/pluginlock/model/DynamicLockData$IndicationData$HelpTextData;->mTop:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$IndicationData$HelpTextData;->mTop:Ljava/lang/Integer;

    if-eqz v0, :cond_8

    iget-object v2, p1, Lcom/android/systemui/pluginlock/model/DynamicLockData$IndicationData$HelpTextData;->mTop:Ljava/lang/Integer;

    .line 924
    invoke-virtual {v0, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$IndicationData$HelpTextData;->mBottom:Ljava/lang/Integer;

    if-nez v0, :cond_4

    iget-object v0, p1, Lcom/android/systemui/pluginlock/model/DynamicLockData$IndicationData$HelpTextData;->mBottom:Ljava/lang/Integer;

    if-eqz v0, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$IndicationData$HelpTextData;->mBottom:Ljava/lang/Integer;

    if-eqz v0, :cond_8

    iget-object v2, p1, Lcom/android/systemui/pluginlock/model/DynamicLockData$IndicationData$HelpTextData;->mBottom:Ljava/lang/Integer;

    .line 926
    invoke-virtual {v0, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$IndicationData$HelpTextData;->mMarginBottom:Ljava/lang/Integer;

    if-nez v0, :cond_6

    iget-object v0, p1, Lcom/android/systemui/pluginlock/model/DynamicLockData$IndicationData$HelpTextData;->mMarginBottom:Ljava/lang/Integer;

    if-eqz v0, :cond_7

    :cond_6
    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$IndicationData$HelpTextData;->mMarginBottom:Ljava/lang/Integer;

    if-eqz p0, :cond_8

    iget-object p1, p1, Lcom/android/systemui/pluginlock/model/DynamicLockData$IndicationData$HelpTextData;->mMarginBottom:Ljava/lang/Integer;

    .line 928
    invoke-virtual {p0, p1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    :cond_7
    const/4 v1, 0x1

    :cond_8
    return v1
.end method

.method public getHelpTextVisibility()Ljava/lang/Integer;
    .locals 0

    .line 882
    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$IndicationData$HelpTextData;->mHelpTextVisibility:Ljava/lang/Integer;

    return-object p0
.end method

.method public getMarginBottom()Ljava/lang/Integer;
    .locals 0

    .line 906
    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$IndicationData$HelpTextData;->mMarginBottom:Ljava/lang/Integer;

    return-object p0
.end method

.method public setBottom(Ljava/lang/Integer;)V
    .locals 0

    .line 902
    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$IndicationData$HelpTextData;->mBottom:Ljava/lang/Integer;

    return-void
.end method

.method public setHelpTextVisibility(Ljava/lang/Integer;)V
    .locals 0

    .line 886
    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$IndicationData$HelpTextData;->mHelpTextVisibility:Ljava/lang/Integer;

    return-void
.end method

.method public setTop(Ljava/lang/Integer;)V
    .locals 0

    .line 894
    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$IndicationData$HelpTextData;->mTop:Ljava/lang/Integer;

    return-void
.end method
