.class Landroid/icu/impl/ICUResourceBundleImpl;
.super Landroid/icu/impl/ICUResourceBundle;
.source "ICUResourceBundleImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/ICUResourceBundleImpl$ResourceTable;,
        Landroid/icu/impl/ICUResourceBundleImpl$ResourceArray;,
        Landroid/icu/impl/ICUResourceBundleImpl$ResourceContainer;,
        Landroid/icu/impl/ICUResourceBundleImpl$ResourceIntVector;,
        Landroid/icu/impl/ICUResourceBundleImpl$ResourceString;,
        Landroid/icu/impl/ICUResourceBundleImpl$ResourceInt;,
        Landroid/icu/impl/ICUResourceBundleImpl$ResourceBinary;
    }
.end annotation


# instance fields
.field protected resource:I


# direct methods
.method constructor <init>(Landroid/icu/impl/ICUResourceBundle$WholeBundle;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Landroid/icu/impl/ICUResourceBundle;-><init>(Landroid/icu/impl/ICUResourceBundle$WholeBundle;)V

    .line 29
    iget-object p1, p1, Landroid/icu/impl/ICUResourceBundle$WholeBundle;->reader:Landroid/icu/impl/ICUResourceBundleReader;

    invoke-virtual {p1}, Landroid/icu/impl/ICUResourceBundleReader;->getRootResource()I

    move-result p1

    iput p1, p0, Landroid/icu/impl/ICUResourceBundleImpl;->resource:I

    return-void
.end method

.method protected constructor <init>(Landroid/icu/impl/ICUResourceBundleImpl;Ljava/lang/String;I)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Landroid/icu/impl/ICUResourceBundle;-><init>(Landroid/icu/impl/ICUResourceBundle;Ljava/lang/String;)V

    .line 25
    iput p3, p0, Landroid/icu/impl/ICUResourceBundleImpl;->resource:I

    return-void
.end method


# virtual methods
.method protected final createBundleObject(Ljava/lang/String;ILjava/util/HashMap;Landroid/icu/util/UResourceBundle;)Landroid/icu/impl/ICUResourceBundle;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/icu/util/UResourceBundle;",
            ")",
            "Landroid/icu/impl/ICUResourceBundle;"
        }
    .end annotation

    .line 38
    invoke-static {p2}, Landroid/icu/impl/ICUResourceBundleReader;->RES_GET_TYPE(I)I

    move-result v0

    const/16 v1, 0xe

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    .line 58
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "The resource type is unknown"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 52
    :pswitch_0
    new-instance p3, Landroid/icu/impl/ICUResourceBundleImpl$ResourceArray;

    invoke-direct {p3, p0, p1, p2}, Landroid/icu/impl/ICUResourceBundleImpl$ResourceArray;-><init>(Landroid/icu/impl/ICUResourceBundleImpl;Ljava/lang/String;I)V

    return-object p3

    .line 47
    :pswitch_1
    new-instance p3, Landroid/icu/impl/ICUResourceBundleImpl$ResourceInt;

    invoke-direct {p3, p0, p1, p2}, Landroid/icu/impl/ICUResourceBundleImpl$ResourceInt;-><init>(Landroid/icu/impl/ICUResourceBundleImpl;Ljava/lang/String;I)V

    return-object p3

    :pswitch_2
    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    .line 45
    invoke-static/range {v0 .. v6}, Landroid/icu/impl/ICUResourceBundleImpl;->getAliasedResource(Landroid/icu/impl/ICUResourceBundle;[Ljava/lang/String;ILjava/lang/String;ILjava/util/HashMap;Landroid/icu/util/UResourceBundle;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object p0

    return-object p0

    .line 56
    :pswitch_3
    new-instance p3, Landroid/icu/impl/ICUResourceBundleImpl$ResourceTable;

    invoke-direct {p3, p0, p1, p2}, Landroid/icu/impl/ICUResourceBundleImpl$ResourceTable;-><init>(Landroid/icu/impl/ICUResourceBundleImpl;Ljava/lang/String;I)V

    return-object p3

    .line 43
    :pswitch_4
    new-instance p3, Landroid/icu/impl/ICUResourceBundleImpl$ResourceBinary;

    invoke-direct {p3, p0, p1, p2}, Landroid/icu/impl/ICUResourceBundleImpl$ResourceBinary;-><init>(Landroid/icu/impl/ICUResourceBundleImpl;Ljava/lang/String;I)V

    return-object p3

    .line 41
    :pswitch_5
    new-instance p3, Landroid/icu/impl/ICUResourceBundleImpl$ResourceString;

    invoke-direct {p3, p0, p1, p2}, Landroid/icu/impl/ICUResourceBundleImpl$ResourceString;-><init>(Landroid/icu/impl/ICUResourceBundleImpl;Ljava/lang/String;I)V

    return-object p3

    .line 49
    :cond_0
    new-instance p3, Landroid/icu/impl/ICUResourceBundleImpl$ResourceIntVector;

    invoke-direct {p3, p0, p1, p2}, Landroid/icu/impl/ICUResourceBundleImpl$ResourceIntVector;-><init>(Landroid/icu/impl/ICUResourceBundleImpl;Ljava/lang/String;I)V

    return-object p3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_5
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getResource()I
    .locals 0

    .line 32
    iget p0, p0, Landroid/icu/impl/ICUResourceBundleImpl;->resource:I

    return p0
.end method
