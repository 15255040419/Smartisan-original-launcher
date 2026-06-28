.class public final Landroid/icu/text/CaseMap$Fold;
.super Landroid/icu/text/CaseMap;
.source "CaseMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/CaseMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Fold"
.end annotation


# static fields
.field private static final DEFAULT:Landroid/icu/text/CaseMap$Fold;

.field private static final OMIT_UNCHANGED:Landroid/icu/text/CaseMap$Fold;

.field private static final TURKIC:Landroid/icu/text/CaseMap$Fold;

.field private static final TURKIC_OMIT_UNCHANGED:Landroid/icu/text/CaseMap$Fold;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 384
    new-instance v0, Landroid/icu/text/CaseMap$Fold;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/icu/text/CaseMap$Fold;-><init>(I)V

    sput-object v0, Landroid/icu/text/CaseMap$Fold;->DEFAULT:Landroid/icu/text/CaseMap$Fold;

    .line 385
    new-instance v0, Landroid/icu/text/CaseMap$Fold;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/icu/text/CaseMap$Fold;-><init>(I)V

    sput-object v0, Landroid/icu/text/CaseMap$Fold;->TURKIC:Landroid/icu/text/CaseMap$Fold;

    .line 386
    new-instance v0, Landroid/icu/text/CaseMap$Fold;

    const/16 v1, 0x4000

    invoke-direct {v0, v1}, Landroid/icu/text/CaseMap$Fold;-><init>(I)V

    sput-object v0, Landroid/icu/text/CaseMap$Fold;->OMIT_UNCHANGED:Landroid/icu/text/CaseMap$Fold;

    .line 387
    new-instance v0, Landroid/icu/text/CaseMap$Fold;

    const/16 v1, 0x4001

    invoke-direct {v0, v1}, Landroid/icu/text/CaseMap$Fold;-><init>(I)V

    sput-object v0, Landroid/icu/text/CaseMap$Fold;->TURKIC_OMIT_UNCHANGED:Landroid/icu/text/CaseMap$Fold;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 389
    invoke-direct {p0, p1, v0}, Landroid/icu/text/CaseMap;-><init>(ILandroid/icu/text/CaseMap$1;)V

    return-void
.end method

.method static synthetic access$300()Landroid/icu/text/CaseMap$Fold;
    .locals 1

    .line 383
    sget-object v0, Landroid/icu/text/CaseMap$Fold;->DEFAULT:Landroid/icu/text/CaseMap$Fold;

    return-object v0
.end method


# virtual methods
.method public apply(Ljava/lang/CharSequence;Ljava/lang/Appendable;Landroid/icu/text/Edits;)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/Appendable;",
            ">(",
            "Ljava/lang/CharSequence;",
            "TA;",
            "Landroid/icu/text/Edits;",
            ")TA;"
        }
    .end annotation

    .line 455
    iget p0, p0, Landroid/icu/text/CaseMap$Fold;->internalOptions:I

    invoke-static {p0, p1, p2, p3}, Landroid/icu/impl/CaseMapImpl;->fold(ILjava/lang/CharSequence;Ljava/lang/Appendable;Landroid/icu/text/Edits;)Ljava/lang/Appendable;

    move-result-object p0

    return-object p0
.end method

.method public apply(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 0

    .line 433
    iget p0, p0, Landroid/icu/text/CaseMap$Fold;->internalOptions:I

    invoke-static {p0, p1}, Landroid/icu/impl/CaseMapImpl;->fold(ILjava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public omitUnchangedText()Landroid/icu/text/CaseMap$Fold;
    .locals 0

    .line 397
    iget p0, p0, Landroid/icu/text/CaseMap$Fold;->internalOptions:I

    and-int/lit8 p0, p0, 0x1

    if-nez p0, :cond_0

    .line 398
    sget-object p0, Landroid/icu/text/CaseMap$Fold;->OMIT_UNCHANGED:Landroid/icu/text/CaseMap$Fold;

    goto :goto_0

    :cond_0
    sget-object p0, Landroid/icu/text/CaseMap$Fold;->TURKIC_OMIT_UNCHANGED:Landroid/icu/text/CaseMap$Fold;

    :goto_0
    return-object p0
.end method

.method public bridge synthetic omitUnchangedText()Landroid/icu/text/CaseMap;
    .locals 0

    .line 383
    invoke-virtual {p0}, Landroid/icu/text/CaseMap$Fold;->omitUnchangedText()Landroid/icu/text/CaseMap$Fold;

    move-result-object p0

    return-object p0
.end method

.method public turkic()Landroid/icu/text/CaseMap$Fold;
    .locals 0

    .line 414
    iget p0, p0, Landroid/icu/text/CaseMap$Fold;->internalOptions:I

    and-int/lit16 p0, p0, 0x4000

    if-nez p0, :cond_0

    .line 415
    sget-object p0, Landroid/icu/text/CaseMap$Fold;->TURKIC:Landroid/icu/text/CaseMap$Fold;

    goto :goto_0

    :cond_0
    sget-object p0, Landroid/icu/text/CaseMap$Fold;->TURKIC_OMIT_UNCHANGED:Landroid/icu/text/CaseMap$Fold;

    :goto_0
    return-object p0
.end method
