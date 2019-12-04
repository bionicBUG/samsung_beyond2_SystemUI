.class Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewSettingActivity$1;
.super Ljava/lang/Object;
.source "SmartPopupViewSettingActivity.java"

# interfaces
.implements Landroidx/apppickerview/widget/AppPickerView$OnBindListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewSettingActivity;->setupOnBindListener(Landroidx/apppickerview/widget/AppPickerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewSettingActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewSettingActivity;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewSettingActivity$1;->this$0:Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onBindViewHolder$0$SmartPopupViewSettingActivity$1(Ljava/lang/String;Landroid/widget/CompoundButton;Z)V
    .locals 1

    const-string p2, "BubbleContainerManager"

    if-eqz p3, :cond_0

    .line 162
    iget-object p3, p0, Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewSettingActivity$1;->this$0:Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewSettingActivity;

    iget-object p3, p3, Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewSettingActivity;->mEnablePackageList:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    invoke-static {}, Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewSettingActivity;->access$000()Z

    move-result p3

    if-eqz p3, :cond_2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[SmartPopupViewSettingActivity] package on: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 165
    :cond_0
    iget-object p3, p0, Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewSettingActivity$1;->this$0:Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewSettingActivity;

    iget-object p3, p3, Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewSettingActivity;->mEnablePackageList:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 166
    invoke-static {}, Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewSettingActivity;->access$000()Z

    move-result p3

    if-eqz p3, :cond_1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[SmartPopupViewSettingActivity] package off: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewSettingActivity$1;->this$0:Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewSettingActivity;

    iget-object p2, p2, Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewSettingActivity;->mEnablePackageList:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 170
    iget-object p2, p0, Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewSettingActivity$1;->this$0:Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewSettingActivity;

    iget-object p2, p2, Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewSettingActivity;->mEnablePackageList:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 174
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewSettingActivity$1;->this$0:Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewSettingActivity;

    invoke-static {p1}, Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewSettingActivity;->access$100(Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewSettingActivity;)Landroid/content/Context;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewSettingActivity$1;->this$0:Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewSettingActivity;

    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewSettingActivity;->mEnablePackageList:Ljava/util/ArrayList;

    invoke-static {p1, p0}, Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewDB;->putPackageStrListToDB(Landroid/content/Context;Ljava/util/ArrayList;)V

    return-void
.end method

.method public onBindViewHolder(Landroidx/apppickerview/widget/AppPickerView$ViewHolder;ILjava/lang/String;)V
    .locals 0

    .line 155
    invoke-virtual {p1}, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->getSwitch()Landroid/widget/Switch;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 158
    iget-object p2, p0, Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewSettingActivity$1;->this$0:Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewSettingActivity;

    iget-object p2, p2, Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewSettingActivity;->mEnablePackageList:Ljava/util/ArrayList;

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 160
    new-instance p2, Lcom/samsung/android/systemui/minimizecontainer/-$$Lambda$SmartPopupViewSettingActivity$1$sBTg7iAxLAdjNFnHxWr2E3N-ihI;

    invoke-direct {p2, p0, p3}, Lcom/samsung/android/systemui/minimizecontainer/-$$Lambda$SmartPopupViewSettingActivity$1$sBTg7iAxLAdjNFnHxWr2E3N-ihI;-><init>(Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewSettingActivity$1;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_0
    return-void
.end method
