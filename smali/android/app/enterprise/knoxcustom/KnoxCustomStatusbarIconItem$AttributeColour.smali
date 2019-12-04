.class public Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem$AttributeColour;
.super Ljava/lang/Object;
.source "KnoxCustomStatusbarIconItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AttributeColour"
.end annotation


# instance fields
.field private mAttribute:I

.field private mColour:I

.field final synthetic this$0:Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem;


# direct methods
.method public constructor <init>(Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem;II)V
    .locals 0

    .line 98
    iput-object p1, p0, Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem$AttributeColour;->this$0:Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput p2, p0, Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem$AttributeColour;->mAttribute:I

    .line 100
    iput p3, p0, Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem$AttributeColour;->mColour:I

    return-void
.end method


# virtual methods
.method public getAttribute()I
    .locals 0

    .line 107
    iget p0, p0, Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem$AttributeColour;->mAttribute:I

    return p0
.end method

.method public getColour()I
    .locals 0

    .line 114
    iget p0, p0, Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem$AttributeColour;->mColour:I

    return p0
.end method
