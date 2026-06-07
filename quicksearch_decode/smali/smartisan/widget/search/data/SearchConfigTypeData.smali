.class public Lsmartisan/widget/search/data/SearchConfigTypeData;
.super Ljava/lang/Object;
.source "SearchConfigTypeData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lsmartisan/widget/search/data/SearchConfigTypeData;",
            ">;"
        }
    .end annotation
.end field

.field public static final i:I

.field public static final j:Landroid/net/Uri;

.field public static final k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:I

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 18

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/smartisan/settings"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2
    sget v0, Lsmartisan/widget/R$drawable;->boom_win_search_toutiao:I

    sput v0, Lsmartisan/widget/search/data/SearchConfigTypeData;->i:I

    const-string v0, "content://com.smartisanos.gloable.searchconfig.provider"

    .line 3
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lsmartisan/widget/search/data/SearchConfigTypeData;->j:Landroid/net/Uri;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lsmartisan/widget/search/data/SearchConfigTypeData;->k:Ljava/util/Map;

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lsmartisan/widget/search/data/SearchConfigTypeData;->l:Ljava/util/Map;

    .line 6
    sget-object v0, Lsmartisan/widget/search/data/SearchConfigTypeData;->k:Ljava/util/Map;

    sget v1, Lsmartisan/widget/R$drawable;->gloable_search_sogou:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "search_sogou"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    sget-object v0, Lsmartisan/widget/search/data/SearchConfigTypeData;->k:Ljava/util/Map;

    sget v1, Lsmartisan/widget/R$drawable;->gloable_search_baidu:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "search_baidu"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    sget-object v0, Lsmartisan/widget/search/data/SearchConfigTypeData;->k:Ljava/util/Map;

    sget v1, Lsmartisan/widget/R$drawable;->gloable_search_google:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v4, "search_google"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    sget-object v0, Lsmartisan/widget/search/data/SearchConfigTypeData;->k:Ljava/util/Map;

    sget v1, Lsmartisan/widget/R$drawable;->gloable_search_bing:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v5, "search_bing"

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    sget-object v0, Lsmartisan/widget/search/data/SearchConfigTypeData;->k:Ljava/util/Map;

    sget v1, Lsmartisan/widget/R$drawable;->gloable_search_360so:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v6, "search_360so"

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    sget-object v0, Lsmartisan/widget/search/data/SearchConfigTypeData;->k:Ljava/util/Map;

    sget v1, Lsmartisan/widget/R$drawable;->gloable_search_youdao:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v7, "dictionary_youdao"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    sget-object v0, Lsmartisan/widget/search/data/SearchConfigTypeData;->k:Ljava/util/Map;

    sget v1, Lsmartisan/widget/R$drawable;->gloable_search_bingdict:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v8, "dictionary_bing"

    invoke-interface {v0, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    sget-object v0, Lsmartisan/widget/search/data/SearchConfigTypeData;->k:Ljava/util/Map;

    sget v1, Lsmartisan/widget/R$drawable;->gloable_search_kingsoft:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v9, "dictionary_iciba"

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    sget-object v0, Lsmartisan/widget/search/data/SearchConfigTypeData;->k:Ljava/util/Map;

    sget v1, Lsmartisan/widget/R$drawable;->gloable_search_googletrans:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v10, "dictionary_google"

    invoke-interface {v0, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    sget-object v0, Lsmartisan/widget/search/data/SearchConfigTypeData;->k:Ljava/util/Map;

    sget v1, Lsmartisan/widget/R$drawable;->gloable_search_baike:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v11, "baike_baidu"

    invoke-interface {v0, v11, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    sget-object v0, Lsmartisan/widget/search/data/SearchConfigTypeData;->k:Ljava/util/Map;

    sget v1, Lsmartisan/widget/R$drawable;->gloable_search_hudongdict:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v12, "baike_hudong"

    invoke-interface {v0, v12, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    sget-object v0, Lsmartisan/widget/search/data/SearchConfigTypeData;->k:Ljava/util/Map;

    sget v1, Lsmartisan/widget/R$drawable;->gloable_search_wiki_en:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v13, "baike_wikiEN"

    invoke-interface {v0, v13, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    sget-object v0, Lsmartisan/widget/search/data/SearchConfigTypeData;->k:Ljava/util/Map;

    sget v1, Lsmartisan/widget/R$drawable;->gloable_search_wiki_cn:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v14, "baike_wikiCN"

    invoke-interface {v0, v14, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    sget-object v0, Lsmartisan/widget/search/data/SearchConfigTypeData;->k:Ljava/util/Map;

    sget v1, Lsmartisan/widget/R$drawable;->gloable_search_weixin:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v15, "third_sogou"

    invoke-interface {v0, v15, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    sget-object v0, Lsmartisan/widget/search/data/SearchConfigTypeData;->k:Ljava/util/Map;

    sget v1, Lsmartisan/widget/R$drawable;->gloable_search_weibo:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v16, v15

    const-string v15, "third_weibo"

    invoke-interface {v0, v15, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    sget-object v0, Lsmartisan/widget/search/data/SearchConfigTypeData;->k:Ljava/util/Map;

    sget v1, Lsmartisan/widget/R$drawable;->gloable_search_zhihu:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v17, v15

    const-string v15, "third_zhihu"

    invoke-interface {v0, v15, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    sget-object v0, Lsmartisan/widget/search/data/SearchConfigTypeData;->l:Ljava/util/Map;

    sget v1, Lsmartisan/widget/R$drawable;->boom_win_search_sogou:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    sget-object v0, Lsmartisan/widget/search/data/SearchConfigTypeData;->l:Ljava/util/Map;

    sget v1, Lsmartisan/widget/R$drawable;->boom_win_search_baidu:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    sget-object v0, Lsmartisan/widget/search/data/SearchConfigTypeData;->l:Ljava/util/Map;

    sget v1, Lsmartisan/widget/R$drawable;->boom_win_search_google:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    sget-object v0, Lsmartisan/widget/search/data/SearchConfigTypeData;->l:Ljava/util/Map;

    sget v1, Lsmartisan/widget/R$drawable;->boom_win_search_bing:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    sget-object v0, Lsmartisan/widget/search/data/SearchConfigTypeData;->l:Ljava/util/Map;

    sget v1, Lsmartisan/widget/R$drawable;->boom_win_search_360so:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    sget-object v0, Lsmartisan/widget/search/data/SearchConfigTypeData;->l:Ljava/util/Map;

    sget v1, Lsmartisan/widget/R$drawable;->boom_win_search_toutiao:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "search_toutiao"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    sget-object v0, Lsmartisan/widget/search/data/SearchConfigTypeData;->l:Ljava/util/Map;

    sget v1, Lsmartisan/widget/R$drawable;->boom_win_search_youdao:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sget-object v0, Lsmartisan/widget/search/data/SearchConfigTypeData;->l:Ljava/util/Map;

    sget v1, Lsmartisan/widget/R$drawable;->boom_win_search_bingdict:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object v0, Lsmartisan/widget/search/data/SearchConfigTypeData;->l:Ljava/util/Map;

    sget v1, Lsmartisan/widget/R$drawable;->boom_win_search_kingsoft:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v0, Lsmartisan/widget/search/data/SearchConfigTypeData;->l:Ljava/util/Map;

    sget v1, Lsmartisan/widget/R$drawable;->boom_win_search_googletrans:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v0, Lsmartisan/widget/search/data/SearchConfigTypeData;->l:Ljava/util/Map;

    sget v1, Lsmartisan/widget/R$drawable;->boom_win_search_baike:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v11, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v0, Lsmartisan/widget/search/data/SearchConfigTypeData;->l:Ljava/util/Map;

    sget v1, Lsmartisan/widget/R$drawable;->boom_win_search_hudongdict:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v12, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v0, Lsmartisan/widget/search/data/SearchConfigTypeData;->l:Ljava/util/Map;

    sget v1, Lsmartisan/widget/R$drawable;->boom_win_search_wiki_en:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v13, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v0, Lsmartisan/widget/search/data/SearchConfigTypeData;->l:Ljava/util/Map;

    sget v1, Lsmartisan/widget/R$drawable;->boom_win_search_wiki_cn:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v14, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Lsmartisan/widget/search/data/SearchConfigTypeData;->l:Ljava/util/Map;

    sget v1, Lsmartisan/widget/R$drawable;->boom_win_search_weixin:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v2, v16

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Lsmartisan/widget/search/data/SearchConfigTypeData;->l:Ljava/util/Map;

    sget v1, Lsmartisan/widget/R$drawable;->boom_win_search_weibo:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v2, v17

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Lsmartisan/widget/search/data/SearchConfigTypeData;->l:Ljava/util/Map;

    sget v1, Lsmartisan/widget/R$drawable;->boom_win_search_zhihu:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "third_zhihu"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    new-instance v0, Lsmartisan/widget/search/data/SearchConfigTypeData$a;

    invoke-direct {v0}, Lsmartisan/widget/search/data/SearchConfigTypeData$a;-><init>()V

    sput-object v0, Lsmartisan/widget/search/data/SearchConfigTypeData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsmartisan/widget/search/data/SearchConfigTypeData;->a:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsmartisan/widget/search/data/SearchConfigTypeData;->b:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsmartisan/widget/search/data/SearchConfigTypeData;->c:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsmartisan/widget/search/data/SearchConfigTypeData;->d:Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lsmartisan/widget/search/data/SearchConfigTypeData;->e:I

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsmartisan/widget/search/data/SearchConfigTypeData;->f:Ljava/lang/String;

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsmartisan/widget/search/data/SearchConfigTypeData;->g:Ljava/lang/String;

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lsmartisan/widget/search/data/SearchConfigTypeData;->h:Z

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Lsmartisan/widget/search/data/SearchConfigTypeData$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lsmartisan/widget/search/data/SearchConfigTypeData;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    .line 1
    sget-object v0, Lsmartisan/widget/search/data/SearchConfigTypeData;->l:Ljava/util/Map;

    iget-object v1, p0, Lsmartisan/widget/search/data/SearchConfigTypeData;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget v0, Lsmartisan/widget/search/data/SearchConfigTypeData;->i:I

    return v0

    .line 3
    :cond_0
    sget-object v0, Lsmartisan/widget/search/data/SearchConfigTypeData;->l:Ljava/util/Map;

    iget-object v1, p0, Lsmartisan/widget/search/data/SearchConfigTypeData;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public a(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x1

    .line 5
    invoke-virtual {p0, v0}, Lsmartisan/widget/search/data/SearchConfigTypeData;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lsmartisan/widget/search/data/SearchConfigTypeData;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 10
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 11
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "url"

    .line 12
    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object p2, Lsmartisan/widget/search/data/SearchConfigTypeData;->j:Landroid/net/Uri;

    const-string v2, "getIcon"

    invoke-virtual {p1, p2, v2, v0, v1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v0

    :cond_1
    const-string p2, "icon"

    .line 14
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 15
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getUrlBitmapBySettings exception ex="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SearchConfigTypeData"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-object v0
.end method

.method public a(I)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-ltz p1, :cond_2

    .line 6
    iget-object v1, p0, Lsmartisan/widget/search/data/SearchConfigTypeData;->g:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    iget-object v1, p0, Lsmartisan/widget/search/data/SearchConfigTypeData;->g:Ljava/lang/String;

    const-string v2, "\\|\\|"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 8
    array-length v2, v1

    if-lt p1, v2, :cond_1

    goto :goto_0

    .line 9
    :cond_1
    aget-object p1, v1, p1

    return-object p1

    :cond_2
    :goto_0
    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lsmartisan/widget/search/data/SearchConfigTypeData;->f:Ljava/lang/String;

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 16
    iput-boolean p1, p0, Lsmartisan/widget/search/data/SearchConfigTypeData;->h:Z

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 3
    iget-object v0, p0, Lsmartisan/widget/search/data/SearchConfigTypeData;->f:Ljava/lang/String;

    return-object v0
.end method

.method public b(I)V
    .locals 0

    .line 2
    iput p1, p0, Lsmartisan/widget/search/data/SearchConfigTypeData;->e:I

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/search/data/SearchConfigTypeData;->c:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lsmartisan/widget/search/data/SearchConfigTypeData;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/search/data/SearchConfigTypeData;->a:Ljava/lang/String;

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/search/data/SearchConfigTypeData;->a:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lsmartisan/widget/search/data/SearchConfigTypeData;->g:Ljava/lang/String;

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lsmartisan/widget/search/data/SearchConfigTypeData;->g:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/search/data/SearchConfigTypeData;->b:Ljava/lang/String;

    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lsmartisan/widget/search/data/SearchConfigTypeData;->b:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/search/data/SearchConfigTypeData;->d:Ljava/lang/String;

    return-void
.end method

.method public g()I
    .locals 1

    .line 1
    iget v0, p0, Lsmartisan/widget/search/data/SearchConfigTypeData;->e:I

    return v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/search/data/SearchConfigTypeData;->d:Ljava/lang/String;

    return-object v0
.end method

.method public i()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lsmartisan/widget/search/data/SearchConfigTypeData;->h:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object v1, p0, Lsmartisan/widget/search/data/SearchConfigTypeData;->a:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lsmartisan/widget/search/data/SearchConfigTypeData;->b:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lsmartisan/widget/search/data/SearchConfigTypeData;->c:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Lsmartisan/widget/search/data/SearchConfigTypeData;->e:I

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lsmartisan/widget/search/data/SearchConfigTypeData;->f:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lsmartisan/widget/search/data/SearchConfigTypeData;->g:Ljava/lang/String;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lsmartisan/widget/search/data/SearchConfigTypeData;->h:Z

    if-eqz v1, :cond_0

    const-string v1, "true"

    goto :goto_0

    :cond_0
    const-string v1, "false"

    :goto_0
    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string v1, "{mIdentifier:%s,mName:%s,mEnName:%s,mOrder:%d,mClickUrl:%s,mImgUrl:%s,isDefault:%s}\n"

    .line 3
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Lsmartisan/widget/search/data/SearchConfigTypeData;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Lsmartisan/widget/search/data/SearchConfigTypeData;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Lsmartisan/widget/search/data/SearchConfigTypeData;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    iget-object p2, p0, Lsmartisan/widget/search/data/SearchConfigTypeData;->d:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5
    iget p2, p0, Lsmartisan/widget/search/data/SearchConfigTypeData;->e:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    iget-object p2, p0, Lsmartisan/widget/search/data/SearchConfigTypeData;->f:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7
    iget-object p2, p0, Lsmartisan/widget/search/data/SearchConfigTypeData;->g:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8
    iget-boolean p2, p0, Lsmartisan/widget/search/data/SearchConfigTypeData;->h:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
