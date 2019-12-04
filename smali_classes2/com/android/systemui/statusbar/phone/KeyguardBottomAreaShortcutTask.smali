.class public abstract Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutTask;
.super Ljava/lang/Object;
.source "KeyguardBottomAreaShortcutTask.java"


# instance fields
.field mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutTask;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public abstract excute()V
.end method

.method public abstract getAppLabel()Ljava/lang/String;
.end method

.method public abstract getDrawble()Landroid/graphics/drawable/Drawable;
.end method

.method public abstract removeListener()V
.end method
