.class public abstract Landroid/icu/text/IDNA;
.super Ljava/lang/Object;
.source "IDNA.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/IDNA$Error;,
        Landroid/icu/text/IDNA$Info;
    }
.end annotation


# static fields
.field public static final ALLOW_UNASSIGNED:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CHECK_BIDI:I = 0x4

.field public static final CHECK_CONTEXTJ:I = 0x8

.field public static final CHECK_CONTEXTO:I = 0x40

.field public static final DEFAULT:I = 0x0

.field public static final NONTRANSITIONAL_TO_ASCII:I = 0x10

.field public static final NONTRANSITIONAL_TO_UNICODE:I = 0x20

.field public static final USE_STD3_RULES:I = 0x2


# direct methods
.method protected constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 448
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static addError(Landroid/icu/text/IDNA$Info;Landroid/icu/text/IDNA$Error;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 312
    invoke-static {p0}, Landroid/icu/text/IDNA$Info;->access$100(Landroid/icu/text/IDNA$Info;)Ljava/util/EnumSet;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected static addLabelError(Landroid/icu/text/IDNA$Info;Landroid/icu/text/IDNA$Error;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 291
    invoke-static {p0}, Landroid/icu/text/IDNA$Info;->access$200(Landroid/icu/text/IDNA$Info;)Ljava/util/EnumSet;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static compare(Landroid/icu/text/UCharacterIterator;Landroid/icu/text/UCharacterIterator;I)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/icu/text/StringPrepParseException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 958
    invoke-virtual {p0}, Landroid/icu/text/UCharacterIterator;->getText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Landroid/icu/text/UCharacterIterator;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2}, Landroid/icu/impl/IDNA2003;->compare(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0

    .line 956
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "One of the source buffers is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static compare(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/icu/text/StringPrepParseException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 922
    invoke-static {p0, p1, p2}, Landroid/icu/impl/IDNA2003;->compare(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0

    .line 920
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "One of the source buffers is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static compare(Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;I)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/icu/text/StringPrepParseException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 886
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2}, Landroid/icu/impl/IDNA2003;->compare(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0

    .line 884
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "One of the source buffers is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static convertIDNToASCII(Landroid/icu/text/UCharacterIterator;I)Ljava/lang/StringBuffer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/icu/text/StringPrepParseException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 582
    invoke-virtual {p0}, Landroid/icu/text/UCharacterIterator;->getText()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/icu/text/IDNA;->convertIDNToASCII(Ljava/lang/String;I)Ljava/lang/StringBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static convertIDNToASCII(Ljava/lang/String;I)Ljava/lang/StringBuffer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/icu/text/StringPrepParseException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 654
    invoke-static {p0, p1}, Landroid/icu/impl/IDNA2003;->convertIDNToASCII(Ljava/lang/String;I)Ljava/lang/StringBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static convertIDNToASCII(Ljava/lang/StringBuffer;I)Ljava/lang/StringBuffer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/icu/text/StringPrepParseException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 618
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/icu/text/IDNA;->convertIDNToASCII(Ljava/lang/String;I)Ljava/lang/StringBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static convertIDNToUnicode(Landroid/icu/text/UCharacterIterator;I)Ljava/lang/StringBuffer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/icu/text/StringPrepParseException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 783
    invoke-virtual {p0}, Landroid/icu/text/UCharacterIterator;->getText()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/icu/text/IDNA;->convertIDNToUnicode(Ljava/lang/String;I)Ljava/lang/StringBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static convertIDNToUnicode(Ljava/lang/String;I)Ljava/lang/StringBuffer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/icu/text/StringPrepParseException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 849
    invoke-static {p0, p1}, Landroid/icu/impl/IDNA2003;->convertIDNToUnicode(Ljava/lang/String;I)Ljava/lang/StringBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static convertIDNToUnicode(Ljava/lang/StringBuffer;I)Ljava/lang/StringBuffer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/icu/text/StringPrepParseException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 816
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/icu/text/IDNA;->convertIDNToUnicode(Ljava/lang/String;I)Ljava/lang/StringBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static convertToASCII(Landroid/icu/text/UCharacterIterator;I)Ljava/lang/StringBuffer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/icu/text/StringPrepParseException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 546
    invoke-static {p0, p1}, Landroid/icu/impl/IDNA2003;->convertToASCII(Landroid/icu/text/UCharacterIterator;I)Ljava/lang/StringBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static convertToASCII(Ljava/lang/String;I)Ljava/lang/StringBuffer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/icu/text/StringPrepParseException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 482
    invoke-static {p0}, Landroid/icu/text/UCharacterIterator;->getInstance(Ljava/lang/String;)Landroid/icu/text/UCharacterIterator;

    move-result-object p0

    .line 483
    invoke-static {p0, p1}, Landroid/icu/text/IDNA;->convertToASCII(Landroid/icu/text/UCharacterIterator;I)Ljava/lang/StringBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static convertToASCII(Ljava/lang/StringBuffer;I)Ljava/lang/StringBuffer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/icu/text/StringPrepParseException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 514
    invoke-static {p0}, Landroid/icu/text/UCharacterIterator;->getInstance(Ljava/lang/StringBuffer;)Landroid/icu/text/UCharacterIterator;

    move-result-object p0

    .line 515
    invoke-static {p0, p1}, Landroid/icu/text/IDNA;->convertToASCII(Landroid/icu/text/UCharacterIterator;I)Ljava/lang/StringBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static convertToUnicode(Landroid/icu/text/UCharacterIterator;I)Ljava/lang/StringBuffer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/icu/text/StringPrepParseException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 750
    invoke-static {p0, p1}, Landroid/icu/impl/IDNA2003;->convertToUnicode(Landroid/icu/text/UCharacterIterator;I)Ljava/lang/StringBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static convertToUnicode(Ljava/lang/String;I)Ljava/lang/StringBuffer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/icu/text/StringPrepParseException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 686
    invoke-static {p0}, Landroid/icu/text/UCharacterIterator;->getInstance(Ljava/lang/String;)Landroid/icu/text/UCharacterIterator;

    move-result-object p0

    .line 687
    invoke-static {p0, p1}, Landroid/icu/text/IDNA;->convertToUnicode(Landroid/icu/text/UCharacterIterator;I)Ljava/lang/StringBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static convertToUnicode(Ljava/lang/StringBuffer;I)Ljava/lang/StringBuffer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/icu/text/StringPrepParseException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 718
    invoke-static {p0}, Landroid/icu/text/UCharacterIterator;->getInstance(Ljava/lang/StringBuffer;)Landroid/icu/text/UCharacterIterator;

    move-result-object p0

    .line 719
    invoke-static {p0, p1}, Landroid/icu/text/IDNA;->convertToUnicode(Landroid/icu/text/UCharacterIterator;I)Ljava/lang/StringBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static getUTS46Instance(I)Landroid/icu/text/IDNA;
    .locals 1

    .line 146
    new-instance v0, Landroid/icu/impl/UTS46;

    invoke-direct {v0, p0}, Landroid/icu/impl/UTS46;-><init>(I)V

    return-object v0
.end method

.method protected static hasCertainErrors(Landroid/icu/text/IDNA$Info;Ljava/util/EnumSet;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/text/IDNA$Info;",
            "Ljava/util/EnumSet<",
            "Landroid/icu/text/IDNA$Error;",
            ">;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 273
    invoke-static {p0}, Landroid/icu/text/IDNA$Info;->access$100(Landroid/icu/text/IDNA$Info;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/EnumSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Landroid/icu/text/IDNA$Info;->access$100(Landroid/icu/text/IDNA$Info;)Ljava/util/EnumSet;

    move-result-object p0

    invoke-static {p0, p1}, Ljava/util/Collections;->disjoint(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected static hasCertainLabelErrors(Landroid/icu/text/IDNA$Info;Ljava/util/EnumSet;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/text/IDNA$Info;",
            "Ljava/util/EnumSet<",
            "Landroid/icu/text/IDNA$Error;",
            ">;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 282
    invoke-static {p0}, Landroid/icu/text/IDNA$Info;->access$200(Landroid/icu/text/IDNA$Info;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/EnumSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Landroid/icu/text/IDNA$Info;->access$200(Landroid/icu/text/IDNA$Info;)Ljava/util/EnumSet;

    move-result-object p0

    invoke-static {p0, p1}, Ljava/util/Collections;->disjoint(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected static isBiDi(Landroid/icu/text/IDNA$Info;)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 339
    invoke-static {p0}, Landroid/icu/text/IDNA$Info;->access$400(Landroid/icu/text/IDNA$Info;)Z

    move-result p0

    return p0
.end method

.method protected static isOkBiDi(Landroid/icu/text/IDNA$Info;)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 357
    invoke-static {p0}, Landroid/icu/text/IDNA$Info;->access$500(Landroid/icu/text/IDNA$Info;)Z

    move-result p0

    return p0
.end method

.method protected static promoteAndResetLabelErrors(Landroid/icu/text/IDNA$Info;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 300
    invoke-static {p0}, Landroid/icu/text/IDNA$Info;->access$200(Landroid/icu/text/IDNA$Info;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/EnumSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 301
    invoke-static {p0}, Landroid/icu/text/IDNA$Info;->access$100(Landroid/icu/text/IDNA$Info;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {p0}, Landroid/icu/text/IDNA$Info;->access$200(Landroid/icu/text/IDNA$Info;)Ljava/util/EnumSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->addAll(Ljava/util/Collection;)Z

    .line 302
    invoke-static {p0}, Landroid/icu/text/IDNA$Info;->access$200(Landroid/icu/text/IDNA$Info;)Ljava/util/EnumSet;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/EnumSet;->clear()V

    :cond_0
    return-void
.end method

.method protected static resetInfo(Landroid/icu/text/IDNA$Info;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 264
    invoke-static {p0}, Landroid/icu/text/IDNA$Info;->access$000(Landroid/icu/text/IDNA$Info;)V

    return-void
.end method

.method protected static setBiDi(Landroid/icu/text/IDNA$Info;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    .line 330
    invoke-static {p0, v0}, Landroid/icu/text/IDNA$Info;->access$402(Landroid/icu/text/IDNA$Info;Z)Z

    return-void
.end method

.method protected static setNotOkBiDi(Landroid/icu/text/IDNA$Info;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 348
    invoke-static {p0, v0}, Landroid/icu/text/IDNA$Info;->access$502(Landroid/icu/text/IDNA$Info;Z)Z

    return-void
.end method

.method protected static setTransitionalDifferent(Landroid/icu/text/IDNA$Info;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    .line 321
    invoke-static {p0, v0}, Landroid/icu/text/IDNA$Info;->access$302(Landroid/icu/text/IDNA$Info;Z)Z

    return-void
.end method


# virtual methods
.method public abstract labelToASCII(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;Landroid/icu/text/IDNA$Info;)Ljava/lang/StringBuilder;
.end method

.method public abstract labelToUnicode(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;Landroid/icu/text/IDNA$Info;)Ljava/lang/StringBuilder;
.end method

.method public abstract nameToASCII(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;Landroid/icu/text/IDNA$Info;)Ljava/lang/StringBuilder;
.end method

.method public abstract nameToUnicode(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;Landroid/icu/text/IDNA$Info;)Ljava/lang/StringBuilder;
.end method
