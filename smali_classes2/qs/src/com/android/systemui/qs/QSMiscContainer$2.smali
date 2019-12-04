.class Lqs/src/com/android/systemui/qs/QSMiscContainer$2;
.super Ljava/lang/Object;
.source "QSMiscContainer.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lqs/src/com/android/systemui/qs/QSMiscContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lqs/src/com/android/systemui/qs/QSMiscContainer;


# direct methods
.method constructor <init>(Lqs/src/com/android/systemui/qs/QSMiscContainer;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer$2;->this$0:Lqs/src/com/android/systemui/qs/QSMiscContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    const-string p1, "QsLayoutNewBadge"

    .line 153
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 154
    iget-object p1, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer$2;->this$0:Lqs/src/com/android/systemui/qs/QSMiscContainer;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lqs/src/com/android/systemui/qs/QSMiscContainer;->access$202(Lqs/src/com/android/systemui/qs/QSMiscContainer;Z)Z

    .line 155
    iget-object p1, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer$2;->this$0:Lqs/src/com/android/systemui/qs/QSMiscContainer;

    invoke-static {p1}, Lqs/src/com/android/systemui/qs/QSMiscContainer;->access$300(Lqs/src/com/android/systemui/qs/QSMiscContainer;)V

    .line 156
    iget-object p1, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer$2;->this$0:Lqs/src/com/android/systemui/qs/QSMiscContainer;

    invoke-static {p1}, Lqs/src/com/android/systemui/qs/QSMiscContainer;->access$400(Lqs/src/com/android/systemui/qs/QSMiscContainer;)Landroid/content/Context;

    move-result-object p1

    iget-object p0, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer$2;->this$0:Lqs/src/com/android/systemui/qs/QSMiscContainer;

    invoke-static {p0}, Lqs/src/com/android/systemui/qs/QSMiscContainer;->access$500(Lqs/src/com/android/systemui/qs/QSMiscContainer;)Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/systemui/Prefs;->unregisterListener(Landroid/content/Context;Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    :cond_0
    return-void
.end method
