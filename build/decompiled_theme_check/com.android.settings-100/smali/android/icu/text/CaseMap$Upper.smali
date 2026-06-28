.class public final Landroid/icu/text/CaseMap$Upper;
.super Landroid/icu/text/CaseMap;
.source "CaseMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/CaseMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Upper"
.end annotation


# static fields
.field private static final DEFAULT:Landroid/icu/text/CaseMap$Upper;

.field private static final OMIT_UNCHANGED:Landroid/icu/text/CaseMap$Upper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 136
    new-instance v0, Landroid/icu/text/CaseMap$Upper;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/icu/text/CaseMap$Upper;-><init>(I)V

    sput-object v0, Landroid/icu/text/CaseMap$Upper;->DEFAULT:Landroid/icu/text/CaseMap$Upper;

    .line 137
    new-instance v0, Landroid/icu/text/CaseMap$Upper;

    const/16 v1, 0x4000

    invoke-direct {v0, v1}, Landroid/icu/text/CaseMap$Upper;-><init>(I)V

    sput-object v0, Landroid/icu/text/CaseMap$Upper;->OMIT_UNCHANGED:Landroid/icu/text/CaseMap$Upper;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 138
    invoke-direct {p0, p1, v0}, Landroid/icu/text/CaseMap;-><init>(ILandroid/icu/text/CaseMap$1;)V

    return-void
.end method

.method static synthetic access$100()Landroid/icu/text/CaseMap$Upper;
    .locals 1

    .line 135
    sget-object v0, Landroid/icu/text/CaseMap$Upper;->DEFAULT:Landroid/icu/text/CaseMap$Upper;

    return-object v0
.end method


# virtual methods
.method public apply(Ljava/util/Locale;Ljava/lang/CharSequence;Ljava/lang/Appendable;Landroid/icu/text/Edits;)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/Appendable;",
            ">(",
            "Ljava/util/Locale;",
            "Ljava/lang/CharSequence;",
            "TA;",
            "Landroid/icu/text/Edits;",
            ")TA;"
        }
    .end annotation

    .line 185
    invoke-static {p1}, Landroid/icu/text/CaseMap;->access$500(Ljava/util/Locale;)I

    move-result p1

    iget p0, p0, Landroid/icu/text/CaseMap$Upper;->internalOptions:I

    invoke-static {p1, p0, p2, p3, p4}, Landroid/icu/impl/CaseMapImpl;->toUpper(IILjava/lang/CharSequence;Ljava/lang/Appendable;Landroid/icu/text/Edits;)Ljava/lang/Appendable;

    move-result-object p0

    return-object p0
.end method

.method public apply(Ljava/util/Locale;Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 0

    .line 163
    invoke-static {p1}, Landroid/icu/text/CaseMap;->access$500(Ljava/util/Locale;)I

    move-result p1

    iget p0, p0, Landroid/icu/text/CaseMap$Upper;->internalOptions:I

    invoke-static {p1, p0, p2}, Landroid/icu/impl/CaseMapImpl;->toUpper(IILjava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public omitUnchangedText()Landroid/icu/text/CaseMap$Upper;
    .locals 0

    .line 146
    sget-object p0, Landroid/icu/text/CaseMap$Upper;->OMIT_UNCHANGED:Landroid/icu/text/CaseMap$Upper;

    return-object p0
.end method

.method public bridge synthetic omitUnchangedText()Landroid/icu/text/CaseMap;
    .locals 0

    .line 135
    invoke-virtual {p0}, Landroid/icu/text/CaseMap$Upper;->omitUnchangedText()Landroid/icu/text/CaseMap$Upper;

    move-result-object p0

    return-object p0
.end method
