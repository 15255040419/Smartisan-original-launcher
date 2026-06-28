.class public Landroid/icu/text/LocaleDisplayNames$UiListItem;
.super Ljava/lang/Object;
.source "LocaleDisplayNames.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/LocaleDisplayNames;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UiListItem"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/LocaleDisplayNames$UiListItem$UiListItemComparator;
    }
.end annotation


# instance fields
.field public final minimized:Landroid/icu/util/ULocale;

.field public final modified:Landroid/icu/util/ULocale;

.field public final nameInDisplayLocale:Ljava/lang/String;

.field public final nameInSelf:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 307
    iput-object p1, p0, Landroid/icu/text/LocaleDisplayNames$UiListItem;->minimized:Landroid/icu/util/ULocale;

    .line 308
    iput-object p2, p0, Landroid/icu/text/LocaleDisplayNames$UiListItem;->modified:Landroid/icu/util/ULocale;

    .line 309
    iput-object p3, p0, Landroid/icu/text/LocaleDisplayNames$UiListItem;->nameInDisplayLocale:Ljava/lang/String;

    .line 310
    iput-object p4, p0, Landroid/icu/text/LocaleDisplayNames$UiListItem;->nameInSelf:Ljava/lang/String;

    return-void
.end method

.method public static getComparator(Ljava/util/Comparator;Z)Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "Ljava/lang/Object;",
            ">;Z)",
            "Ljava/util/Comparator<",
            "Landroid/icu/text/LocaleDisplayNames$UiListItem;",
            ">;"
        }
    .end annotation

    .line 355
    new-instance v0, Landroid/icu/text/LocaleDisplayNames$UiListItem$UiListItemComparator;

    invoke-direct {v0, p0, p1}, Landroid/icu/text/LocaleDisplayNames$UiListItem$UiListItemComparator;-><init>(Ljava/util/Comparator;Z)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 321
    instance-of v2, p1, Landroid/icu/text/LocaleDisplayNames$UiListItem;

    if-nez v2, :cond_1

    goto :goto_1

    .line 324
    :cond_1
    check-cast p1, Landroid/icu/text/LocaleDisplayNames$UiListItem;

    .line 325
    iget-object v2, p0, Landroid/icu/text/LocaleDisplayNames$UiListItem;->nameInDisplayLocale:Ljava/lang/String;

    iget-object v3, p1, Landroid/icu/text/LocaleDisplayNames$UiListItem;->nameInDisplayLocale:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/icu/text/LocaleDisplayNames$UiListItem;->nameInSelf:Ljava/lang/String;

    iget-object v3, p1, Landroid/icu/text/LocaleDisplayNames$UiListItem;->nameInSelf:Ljava/lang/String;

    .line 326
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/icu/text/LocaleDisplayNames$UiListItem;->minimized:Landroid/icu/util/ULocale;

    iget-object v3, p1, Landroid/icu/text/LocaleDisplayNames$UiListItem;->minimized:Landroid/icu/util/ULocale;

    .line 327
    invoke-virtual {v2, v3}, Landroid/icu/util/ULocale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p0, p0, Landroid/icu/text/LocaleDisplayNames$UiListItem;->modified:Landroid/icu/util/ULocale;

    iget-object p1, p1, Landroid/icu/text/LocaleDisplayNames$UiListItem;->modified:Landroid/icu/util/ULocale;

    .line 328
    invoke-virtual {p0, p1}, Landroid/icu/util/ULocale;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 1

    .line 336
    iget-object v0, p0, Landroid/icu/text/LocaleDisplayNames$UiListItem;->modified:Landroid/icu/util/ULocale;

    invoke-virtual {v0}, Landroid/icu/util/ULocale;->hashCode()I

    move-result v0

    iget-object p0, p0, Landroid/icu/text/LocaleDisplayNames$UiListItem;->nameInDisplayLocale:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 344
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/icu/text/LocaleDisplayNames$UiListItem;->minimized:Landroid/icu/util/ULocale;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/icu/text/LocaleDisplayNames$UiListItem;->modified:Landroid/icu/util/ULocale;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/icu/text/LocaleDisplayNames$UiListItem;->nameInDisplayLocale:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/icu/text/LocaleDisplayNames$UiListItem;->nameInSelf:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
