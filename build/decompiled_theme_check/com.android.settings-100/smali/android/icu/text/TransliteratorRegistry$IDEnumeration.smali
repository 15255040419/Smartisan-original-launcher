.class Landroid/icu/text/TransliteratorRegistry$IDEnumeration;
.super Ljava/lang/Object;
.source "TransliteratorRegistry.java"

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/TransliteratorRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IDEnumeration"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Enumeration<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field en:Ljava/util/Enumeration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Enumeration<",
            "Landroid/icu/util/CaseInsensitiveString;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Enumeration;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Enumeration<",
            "Landroid/icu/util/CaseInsensitiveString;",
            ">;)V"
        }
    .end annotation

    .line 398
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 399
    iput-object p1, p0, Landroid/icu/text/TransliteratorRegistry$IDEnumeration;->en:Ljava/util/Enumeration;

    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .locals 0

    .line 404
    iget-object p0, p0, Landroid/icu/text/TransliteratorRegistry$IDEnumeration;->en:Ljava/util/Enumeration;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public bridge synthetic nextElement()Ljava/lang/Object;
    .locals 0

    .line 395
    invoke-virtual {p0}, Landroid/icu/text/TransliteratorRegistry$IDEnumeration;->nextElement()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public nextElement()Ljava/lang/String;
    .locals 0

    .line 409
    iget-object p0, p0, Landroid/icu/text/TransliteratorRegistry$IDEnumeration;->en:Ljava/util/Enumeration;

    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/icu/util/CaseInsensitiveString;

    invoke-virtual {p0}, Landroid/icu/util/CaseInsensitiveString;->getString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
