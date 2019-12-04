.class public Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;
.super Ljava/lang/Object;
.source "ArgumentBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;
    }
.end annotation


# instance fields
.field args:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;->args:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public add(Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;Ljava/lang/Object;)Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;->args:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public build()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 93
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;->args:Ljava/util/Map;

    return-object p0
.end method
