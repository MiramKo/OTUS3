//
// GenresAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class GenresAPI {

    /**
     Get a list of video game genres.
     
     - parameter ordering: (query) Which field to use when ordering the results. (optional)
     - parameter page: (query) A page number within the paginated result set. (optional)
     - parameter pageSize: (query) Number of results to return per page. (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func genresList(ordering: String? = nil, page: Int? = nil, pageSize: Int? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: GenresList200Response?, _ error: Error?) -> Void)) -> RequestTask {
        return genresListWithRequestBuilder(ordering: ordering, page: page, pageSize: pageSize).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get a list of video game genres.
     - GET /genres
     - parameter ordering: (query) Which field to use when ordering the results. (optional)
     - parameter page: (query) A page number within the paginated result set. (optional)
     - parameter pageSize: (query) Number of results to return per page. (optional)
     - returns: RequestBuilder<GenresList200Response> 
     */
    open class func genresListWithRequestBuilder(ordering: String? = nil, page: Int? = nil, pageSize: Int? = nil) -> RequestBuilder<GenresList200Response> {
        let localVariablePath = "/genres"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "ordering": (wrappedValue: ordering?.encodeToJSON(), isExplode: false),
            "page": (wrappedValue: page?.encodeToJSON(), isExplode: false),
            "page_size": (wrappedValue: pageSize?.encodeToJSON(), isExplode: false),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<GenresList200Response>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }

    /**
     Get details of the genre.
     
     - parameter id: (path) A unique integer value identifying this Genre. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func genresRead(id: Int, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: GenreSingle?, _ error: Error?) -> Void)) -> RequestTask {
        return genresReadWithRequestBuilder(id: id).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get details of the genre.
     - GET /genres/{id}
     - parameter id: (path) A unique integer value identifying this Genre. 
     - returns: RequestBuilder<GenreSingle> 
     */
    open class func genresReadWithRequestBuilder(id: Int) -> RequestBuilder<GenreSingle> {
        var localVariablePath = "/genres/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<GenreSingle>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }
}
