.class Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;
.super Ljava/lang/Object;
.source "SpoofChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/SpoofChecker$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConfusabledataBuilder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUStringPool;,
        Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUStringComparator;,
        Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private fKeySet:Landroid/icu/text/UnicodeSet;

.field private fKeyVec:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private fLineNum:I

.field private fParseHexNum:Ljava/util/regex/Pattern;

.field private fParseLine:Ljava/util/regex/Pattern;

.field private fStringTable:Ljava/lang/StringBuffer;

.field private fTable:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/Integer;",
            "Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;",
            ">;"
        }
    .end annotation
.end field

.field private fValueVec:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private stringPool:Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUStringPool;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 750
    const-class v0, Landroid/icu/text/SpoofChecker;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 766
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 767
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fTable:Ljava/util/Hashtable;

    .line 768
    new-instance v0, Landroid/icu/text/UnicodeSet;

    invoke-direct {v0}, Landroid/icu/text/UnicodeSet;-><init>()V

    iput-object v0, p0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fKeySet:Landroid/icu/text/UnicodeSet;

    .line 769
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fKeyVec:Ljava/util/ArrayList;

    .line 770
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fValueVec:Ljava/util/ArrayList;

    .line 771
    new-instance v0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUStringPool;

    invoke-direct {v0}, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUStringPool;-><init>()V

    iput-object v0, p0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->stringPool:Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUStringPool;

    return-void
.end method

.method public static buildConfusableData(Ljava/io/Reader;Landroid/icu/text/SpoofChecker$SpoofData;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/text/ParseException;
        }
    .end annotation

    .line 957
    new-instance v0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;

    invoke-direct {v0}, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;-><init>()V

    .line 958
    invoke-virtual {v0, p0, p1}, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->build(Ljava/io/Reader;Landroid/icu/text/SpoofChecker$SpoofData;)V

    return-void
.end method


# virtual methods
.method build(Ljava/io/Reader;Landroid/icu/text/SpoofChecker$SpoofData;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 775
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 778
    new-instance v1, Ljava/io/LineNumberReader;

    invoke-direct {v1, p1}, Ljava/io/LineNumberReader;-><init>(Ljava/io/Reader;)V

    .line 780
    :goto_0
    invoke-virtual {v1}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_d

    const-string p1, "(?m)^[ \\t]*([0-9A-Fa-f]+)[ \\t]+;[ \\t]*([0-9A-Fa-f]+(?:[ \\t]+[0-9A-Fa-f]+)*)[ \\t]*;\\s*(?:(SL)|(SA)|(ML)|(MA))[ \\t]*(?:#.*?)?$|^([ \\t]*(?:#.*?)?)$|^(.*?)$"

    .line 797
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    iput-object p1, p0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fParseLine:Ljava/util/regex/Pattern;

    const-string p1, "\\s*([0-9A-F]+)"

    .line 807
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    iput-object p1, p0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fParseHexNum:Ljava/util/regex/Pattern;

    const/4 p1, 0x0

    .line 811
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    const v2, 0xfeff

    if-ne v1, v2, :cond_0

    const/16 v1, 0x20

    .line 812
    invoke-virtual {v0, p1, v1}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 816
    :cond_0
    iget-object v1, p0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fParseLine:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 817
    :goto_1
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_6

    .line 818
    iget v1, p0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fLineNum:I

    add-int/2addr v1, v2

    iput v1, p0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fLineNum:I

    const/4 v1, 0x7

    .line 819
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->start(I)I

    move-result v1

    if-ltz v1, :cond_1

    goto :goto_1

    :cond_1
    const/16 v1, 0x8

    .line 823
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->start(I)I

    move-result v3

    const-string v4, "Confusables, line "

    if-gez v3, :cond_5

    .line 834
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x10

    invoke-static {v1, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    const-string v5, ": Bad code point: "

    const v6, 0x10ffff

    if-gt v1, v6, :cond_4

    .line 840
    iget-object v7, p0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fParseHexNum:Ljava/util/regex/Pattern;

    const/4 v8, 0x2

    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 842
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 843
    :goto_2
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 844
    invoke-virtual {v7, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v10

    if-gt v10, v6, :cond_2

    .line 850
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 846
    :cond_2
    new-instance p1, Ljava/text/ParseException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fLineNum:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 847
    invoke-static {v10, v3}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 848
    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->start(I)I

    move-result p2

    invoke-direct {p1, p0, p2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p1

    .line 857
    :cond_3
    iget-object v2, p0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->stringPool:Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUStringPool;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUStringPool;->addString(Ljava/lang/String;)Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;

    move-result-object v2

    .line 862
    iget-object v3, p0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fTable:Ljava/util/Hashtable;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 864
    iget-object v2, p0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fKeySet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v2, v1}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    goto/16 :goto_1

    .line 836
    :cond_4
    new-instance p1, Ljava/text/ParseException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fLineNum:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 837
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 838
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->start(I)I

    move-result p2

    invoke-direct {p1, p0, p2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p1

    .line 826
    :cond_5
    new-instance p1, Ljava/text/ParseException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fLineNum:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ": Unrecognized Line: "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 827
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 828
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->start(I)I

    move-result p2

    invoke-direct {p1, p0, p2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p1

    .line 879
    :cond_6
    iget-object v0, p0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->stringPool:Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUStringPool;

    invoke-virtual {v0}, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUStringPool;->sort()V

    .line 880
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fStringTable:Ljava/lang/StringBuffer;

    .line 881
    iget-object v0, p0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->stringPool:Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUStringPool;

    invoke-virtual {v0}, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUStringPool;->size()I

    move-result v0

    move v1, p1

    :goto_3
    if-ge v1, v0, :cond_8

    .line 884
    iget-object v3, p0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->stringPool:Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUStringPool;

    invoke-virtual {v3, v1}, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUStringPool;->getByIndex(I)Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;

    move-result-object v3

    .line 885
    iget-object v4, v3, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;->fStr:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    .line 886
    iget-object v5, p0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fStringTable:Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    if-ne v4, v2, :cond_7

    .line 891
    iget-object v4, v3, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;->fStr:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    iput v4, v3, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;->fCharOrStrTableIndex:I

    goto :goto_4

    .line 893
    :cond_7
    iput v5, v3, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;->fCharOrStrTableIndex:I

    .line 894
    iget-object v4, p0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fStringTable:Ljava/lang/StringBuffer;

    iget-object v3, v3, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;->fStr:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 906
    :cond_8
    iget-object v0, p0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fKeySet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 907
    invoke-virtual {v1, p1}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    .line 908
    iget-object v2, p0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fTable:Ljava/util/Hashtable;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;

    .line 913
    iget-object v3, v2, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;->fStr:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x100

    if-gt v3, v4, :cond_9

    .line 917
    iget-object v3, v2, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;->fStr:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v1, v3}, Landroid/icu/text/SpoofChecker$ConfusableDataUtils;->codePointAndLengthToKey(II)I

    move-result v1

    .line 918
    iget v2, v2, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;->fCharOrStrTableIndex:I

    .line 920
    iget-object v3, p0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fKeyVec:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 921
    iget-object v1, p0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fValueVec:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 914
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Confusable prototypes cannot be longer than 256 entries."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 929
    :cond_a
    iget-object v0, p0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fKeyVec:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 930
    new-array v1, v0, [I

    iput-object v1, p2, Landroid/icu/text/SpoofChecker$SpoofData;->fCFUKeys:[I

    move v1, p1

    :goto_6
    if-ge v1, v0, :cond_b

    .line 933
    iget-object v2, p0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fKeyVec:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 934
    invoke-static {v2}, Landroid/icu/text/SpoofChecker$ConfusableDataUtils;->keyToCodePoint(I)I

    .line 937
    iget-object v3, p2, Landroid/icu/text/SpoofChecker$SpoofData;->fCFUKeys:[I

    aput v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 942
    :cond_b
    iget-object v0, p0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fValueVec:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 944
    new-array v0, v0, [S

    iput-object v0, p2, Landroid/icu/text/SpoofChecker$SpoofData;->fCFUValues:[S

    .line 946
    iget-object v0, p0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fValueVec:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 948
    iget-object v2, p2, Landroid/icu/text/SpoofChecker$SpoofData;->fCFUValues:[S

    add-int/lit8 v3, p1, 0x1

    int-to-short v1, v1

    aput-short v1, v2, p1

    move p1, v3

    goto :goto_7

    .line 952
    :cond_c
    iget-object p0, p0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fStringTable:Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p2, Landroid/icu/text/SpoofChecker$SpoofData;->fCFUStrings:Ljava/lang/String;

    return-void

    .line 784
    :cond_d
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 p1, 0xa

    .line 785
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_0
.end method
