.class public Lcom/smartisanos/securitycenter/widget/SecurityPinImageView;
.super Landroid/widget/ImageView;
.source "SecurityPinImageView.java"


# static fields
.field private static final Ee:I

.field private static final Fe:I

.field private static final Ge:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget v0, Lcom/smartisanos/securitycenter/export/R$drawable;->pin_dot_empty:I

    sput v0, Lcom/smartisanos/securitycenter/widget/SecurityPinImageView;->Ee:I

    .line 2
    sget v0, Lcom/smartisanos/securitycenter/export/R$drawable;->pin_dot_full:I

    sput v0, Lcom/smartisanos/securitycenter/widget/SecurityPinImageView;->Fe:I

    .line 3
    sget v0, Lcom/smartisanos/securitycenter/export/R$drawable;->pin_dot_red:I

    sput v0, Lcom/smartisanos/securitycenter/widget/SecurityPinImageView;->Ge:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/smartisanos/securitycenter/widget/SecurityPinImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/smartisanos/securitycenter/widget/SecurityPinImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/smartisanos/securitycenter/widget/SecurityPinImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method public na()V
    .locals 1

    .line 1
    sget v0, Lcom/smartisanos/securitycenter/widget/SecurityPinImageView;->Ee:I

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public oa()V
    .locals 1

    .line 1
    sget v0, Lcom/smartisanos/securitycenter/widget/SecurityPinImageView;->Fe:I

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public pa()V
    .locals 1

    .line 1
    sget v0, Lcom/smartisanos/securitycenter/widget/SecurityPinImageView;->Ge:I

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method
