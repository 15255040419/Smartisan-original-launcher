.class public Landroid/icu/impl/ICUService$Key;
.super Ljava/lang/Object;
.source "ICUService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/ICUService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Key"
.end annotation


# instance fields
.field private final id:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    iput-object p1, p0, Landroid/icu/impl/ICUService$Key;->id:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public canonicalID()Ljava/lang/String;
    .locals 0

    .line 176
    iget-object p0, p0, Landroid/icu/impl/ICUService$Key;->id:Ljava/lang/String;

    return-object p0
.end method

.method public currentDescriptor()Ljava/lang/String;
    .locals 2

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/icu/impl/ICUService$Key;->currentID()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public currentID()Ljava/lang/String;
    .locals 0

    .line 184
    invoke-virtual {p0}, Landroid/icu/impl/ICUService$Key;->canonicalID()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public fallback()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final id()Ljava/lang/String;
    .locals 0

    .line 168
    iget-object p0, p0, Landroid/icu/impl/ICUService$Key;->id:Ljava/lang/String;

    return-object p0
.end method

.method public isFallbackOf(Ljava/lang/String;)Z
    .locals 0

    .line 216
    invoke-virtual {p0}, Landroid/icu/impl/ICUService$Key;->canonicalID()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
